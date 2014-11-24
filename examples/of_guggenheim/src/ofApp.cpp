#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    http.setVerbose(true);
    http.addCustomHttpHeader("Accept","application/vnd.guggenheim.collection+json");
    http.addCustomHttpHeader("X-GUGGENHEIM-API-KEY","YOURAPIGOESHERE");

    ofAddListener(http.httpResponse, this, &ofApp::newResponse);
        http.fetchURL("http://api.guggenheim.org//collections/objects" , true/*notify when done*/);
    
}

//--------------------------------------------------------------
void ofApp::update(){
http.update();
}

//--------------------------------------------------------------
void ofApp::draw(){
http.draw(30,30);
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
http.fetchURL("http://api.guggenheim.org//collections/objects" , true/*notify when done*/);
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
