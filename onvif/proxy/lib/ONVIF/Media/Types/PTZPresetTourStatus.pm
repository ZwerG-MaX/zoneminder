package ONVIF::Media::Types::PTZPresetTourStatus;
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

my %State_of :ATTR(:get<State>);
my %CurrentTourSpot_of :ATTR(:get<CurrentTourSpot>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        State
        CurrentTourSpot
        Extension

    ) ],
    {
        'State' => \%State_of,
        'CurrentTourSpot' => \%CurrentTourSpot_of,
        'Extension' => \%Extension_of,
    },
    {
        'State' => 'ONVIF::Media::Types::PTZPresetTourState',
        'CurrentTourSpot' => 'ONVIF::Media::Types::PTZPresetTourSpot',
        'Extension' => 'ONVIF::Media::Types::PTZPresetTourStatusExtension',
    },
    {

        'State' => 'State',
        'CurrentTourSpot' => 'CurrentTourSpot',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::PTZPresetTourStatus

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PTZPresetTourStatus from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * State


=item * CurrentTourSpot


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::PTZPresetTourStatus
   State => $some_value, # PTZPresetTourState
   CurrentTourSpot =>  { # ONVIF::Media::Types::PTZPresetTourSpot
     PresetDetail =>      { # ONVIF::Media::Types::PTZPresetTourPresetDetail
       # One of the following elements.
       # No occurance checks yet, so be sure to pass just one...
       PresetToken => $some_value, # ReferenceToken
       Home =>  $some_value, # boolean
       PTZPosition =>  { # ONVIF::Media::Types::PTZVector
         PanTilt => ,
         Zoom => ,
       },
       TypeExtension =>  { # ONVIF::Media::Types::PTZPresetTourTypeExtension
       },
     },
     Speed =>  { # ONVIF::Media::Types::PTZSpeed
       PanTilt => ,
       Zoom => ,
     },
     StayTime =>  $some_value, # duration
     Extension =>  { # ONVIF::Media::Types::PTZPresetTourSpotExtension
     },
   },
   Extension =>  { # ONVIF::Media::Types::PTZPresetTourStatusExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

