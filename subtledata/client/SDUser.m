#import "NIKDate.h"
#import "SDUser.h"

@implementation SDUser

-(id)first_name: (NSString*) first_name
    last_name: (NSString*) last_name
    user_id: (NSNumber*) user_id
    last_known_lon: (NSNumber*) last_known_lon
    email_address: (NSString*) email_address
    dob: (NSString*) dob
    last_known_lat: (NSNumber*) last_known_lat
    middle_name: (NSString*) middle_name
    cell_phone: (NSString*) cell_phone
    user_name: (NSString*) user_name
{
  _first_name = first_name;
  _last_name = last_name;
  _user_id = user_id;
  _last_known_lon = last_known_lon;
  _email_address = email_address;
  _dob = dob;
  _last_known_lat = last_known_lat;
  _middle_name = middle_name;
  _cell_phone = cell_phone;
  _user_name = user_name;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _first_name = dict[@"first_name"]; 
        _last_name = dict[@"last_name"]; 
        _user_id = dict[@"user_id"]; 
        _last_known_lon = dict[@"last_known_lon"]; 
        _email_address = dict[@"email_address"]; 
        _dob = dict[@"dob"]; 
        _last_known_lat = dict[@"last_known_lat"]; 
        _middle_name = dict[@"middle_name"]; 
        _cell_phone = dict[@"cell_phone"]; 
        _user_name = dict[@"user_name"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_first_name != nil) dict[@"first_name"] = _first_name ;
    if(_last_name != nil) dict[@"last_name"] = _last_name ;
    if(_user_id != nil) dict[@"user_id"] = _user_id ;
    if(_last_known_lon != nil) dict[@"last_known_lon"] = _last_known_lon ;
    if(_email_address != nil) dict[@"email_address"] = _email_address ;
    if(_dob != nil) dict[@"dob"] = _dob ;
    if(_last_known_lat != nil) dict[@"last_known_lat"] = _last_known_lat ;
    if(_middle_name != nil) dict[@"middle_name"] = _middle_name ;
    if(_cell_phone != nil) dict[@"cell_phone"] = _cell_phone ;
    if(_user_name != nil) dict[@"user_name"] = _user_name ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

