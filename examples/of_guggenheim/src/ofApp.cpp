#include "ofApp.h"


//--------------------------------------------------------------
void ofApp::setup(){
    ofLog() << GUGGAPIKEY;
    //http.setVerbose(true);
    http.addCustomHttpHeader("Accept","application/vnd.guggenheim.collection+json");
    http.addCustomHttpHeader("X-GUGGENHEIM-API-KEY",GUGGAPIKEY);
    
    imgurl = "";
    
    ofAddListener(http.httpResponse, this, &ofApp::newResponse);
    http.fetchURL("http://api.guggenheim.org//collections/objects" , true/*notify when done*/);
    loading=false;
    ofRegisterURLNotification(this);
    
}

//--------------------------------------------------------------
void ofApp::update(){
    http.update();
}

//--------------------------------------------------------------
void ofApp::draw(){
    int hcount = 0;
    int vcount = 0;
    int tallest = 0;
    if(images.size()>0){
        for(int i=0;i<images.size();i++){
            if(images.at(i)->isAllocated() && loading == false) {
                
                images.at(i)->draw(hcount,vcount);
                hcount += images.at(i)->getWidth();
                int thisHeight = images.at(i)->getHeight();
                if(thisHeight>tallest){
                    tallest = thisHeight;
                }
                if(hcount>ofGetWidth()-100){
                    hcount = 0;
                    vcount += tallest;
                }
                ///ofDrawBitmapString("yep", ofPoint(30,30));
            } else {
                //ofDrawBitmapString("nope", ofPoint(30,30));
            }
        }
    }
    //http.draw(30,30);
    
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){
    
}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){
    
}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){
    
}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){
    
}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){
    
}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){
    
}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){
    
}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){
    
}
void ofApp::newResponse(ofxSimpleHttpResponse &r){
    
    cout << "#########################################################" << endl;
    cout << "download of " << r.url << " returned : "<< string(r.ok ? "OK" : "KO") << endl;
    cout << "server reported size is " << r.serverReportedSize << endl;
    cout << "server status is " << r.status << endl;
    cout << "file content type is " << r.contentType << endl;
    cout << "file name is " << r.fileName << endl;
    
    
    result.parse(r.responseBody);
    for(int i=0;i<result["objects"]["items"].size();i++){
        //cout << result["objects"]["items"][i]["media"][0]["assets"]["small"]["_links"]["_self"]["href"];
        
        //if(i==0){
        imgurl = result["objects"]["items"][i]["media"][0]["assets"]["small"]["_links"]["_self"]["href"].toStyledString();
        
        ofStringReplace(imgurl,"\"","");
        ofStringReplace(imgurl,"\n","");
        ofLog() << imgurl;
        ofLoadURLAsync(imgurl,"tsingy_forest");
        //  }
        
    }
    if(r.downloadToDisk){
        cout << "file was saved to " << r.absolutePath << endl;
        
        //move the file to wherever you need..
        ofDirectory dir;
        dir.createDirectory("mySortedDownloads");
        
        ofDirectory f;
        f.open( r.absolutePath );
        if( f.exists() ){
            f.moveTo("mySortedDownloads/" + r.fileName);
        }else{
            cout << "file was not downloaded???!" << r.absolutePath << endl;
        }
    }
}
void ofApp::urlResponse(ofHttpResponse & response){
    if(response.status==200 && response.request.name == "tsingy_forest"){
        ofImage * thisimage = new ofImage();
        thisimage->loadImage(response.data);
        images.push_back(thisimage);
        //img.loadImage(response.data);
        loading=false;
    }else{
        cout << response.status << " " << response.error << endl;
        if(response.status!=-1) loading=false;
    }
}
void ofApp::exit() {
    ofUnregisterURLNotification(this);
}