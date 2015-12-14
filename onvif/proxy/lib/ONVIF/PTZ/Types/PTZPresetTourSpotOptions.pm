package ONVIF::PTZ::Types::PTZPresetTourSpotOptions;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %PresetDetail_of :ATTR(:get<PresetDetail>);
my %StayTime_of :ATTR(:get<StayTime>);

__PACKAGE__->_factory(
    [ qw(        PresetDetail
        StayTime

    ) ],
    {
        'PresetDetail' => \%PresetDetail_of,
        'StayTime' => \%StayTime_of,
    },
    {
        'PresetDetail' => 'ONVIF::PTZ::Types::PTZPresetTourPresetDetailOptions',
        'StayTime' => 'ONVIF::PTZ::Types::DurationRange',
    },
    {

        'PresetDetail' => 'PresetDetail',
        'StayTime' => 'StayTime',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::PTZPresetTourSpotOptions

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PTZPresetTourSpotOptions from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * PresetDetail


=item * StayTime




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::PTZPresetTourSpotOptions
   PresetDetail =>  { # ONVIF::PTZ::Types::PTZPresetTourPresetDetailOptions
     PresetToken => $some_value, # ReferenceToken
     Home =>  $some_value, # boolean
     PanTiltPositionSpace =>  { # ONVIF::PTZ::Types::Space2DDescription
       URI =>  $some_value, # anyURI
       XRange =>  { # ONVIF::PTZ::Types::FloatRange
         Min =>  $some_value, # float
         Max =>  $some_value, # float
       },
       YRange =>  { # ONVIF::PTZ::Types::FloatRange
         Min =>  $some_value, # float
         Max =>  $some_value, # float
       },
     },
     ZoomPositionSpace =>  { # ONVIF::PTZ::Types::Space1DDescription
       URI =>  $some_value, # anyURI
       XRange =>  { # ONVIF::PTZ::Types::FloatRange
         Min =>  $some_value, # float
         Max =>  $some_value, # float
       },
     },
     Extension =>  { # ONVIF::PTZ::Types::PTZPresetTourPresetDetailOptionsExtension
     },
   },
   StayTime =>  { # ONVIF::PTZ::Types::DurationRange
     Min =>  $some_value, # duration
     Max =>  $some_value, # duration
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

