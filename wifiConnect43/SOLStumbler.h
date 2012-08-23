//
//  SOLStumbler.h
//  Stumbler
//
//  Created by Bryan Bernhart on 1/6/10.
//  Copyright Bryan Bernhart 2010. All rights reserved.
//      License: GNU General Public License
//

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#include <dlfcn.h>

@interface SOLStumbler : NSObject {
    NSMutableDictionary *networks; //Key: MAC Address (BSSID)
    
    void *libHandle;
    void *airportHandle;
    int (*apple80211Open)(void *);
    int (*apple80211Bind)(void *, NSString *);
    int (*apple80211Close)(void *);
    int (*apple80211Associate)(void *, NSDictionary*, NSString*);
    int (*apple80211Scan)(void *, NSArray **, void *);
}

- (NSDictionary *)networks;                                                             //returns all 802.11 scanned network(s)
- (NSDictionary *)network:(NSString *) BSSID;                   //return specific 802.11 network by BSSID (MAC Address)
- (void)scanNetworks;
- (int)numberOfNetworks;
- (int)associateToNetwork:(NSString *)SSID;

@end