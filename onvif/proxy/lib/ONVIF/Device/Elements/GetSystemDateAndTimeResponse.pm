
package ONVIF::Device::Elements::GetSystemDateAndTimeResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver10/device/wsdl' }

__PACKAGE__->__set_name('GetSystemDateAndTimeResponse');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %SystemDateAndTime_of :ATTR(:get<SystemDateAndTime>);

__PACKAGE__->_factory(
    [ qw(        SystemDateAndTime

    ) ],
    {
        'SystemDateAndTime' => \%SystemDateAndTime_of,
    },
    {
        'SystemDateAndTime' => 'ONVIF::Device::Types::SystemDateTime',
    },
    {

        'SystemDateAndTime' => 'SystemDateAndTime',
    }
);

} # end BLOCK







} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::Device::Elements::GetSystemDateAndTimeResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
GetSystemDateAndTimeResponse from the namespace http://www.onvif.org/ver10/device/wsdl.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * SystemDateAndTime

 $element->set_SystemDateAndTime($data);
 $element->get_SystemDateAndTime();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::Device::Elements::GetSystemDateAndTimeResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   SystemDateAndTime =>  { # ONVIF::Device::Types::SystemDateTime
     DateTimeType => $some_value, # SetDateTimeType
     DaylightSavings =>  $some_value, # boolean
     TimeZone =>  { # ONVIF::Device::Types::TimeZone
       TZ =>  $some_value, # token
     },
     UTCDateTime =>  { # ONVIF::Device::Types::DateTime
       Time =>  { # ONVIF::Device::Types::Time
         Hour =>  $some_value, # int
         Minute =>  $some_value, # int
         Second =>  $some_value, # int
       },
       Date =>  { # ONVIF::Device::Types::Date
         Year =>  $some_value, # int
         Month =>  $some_value, # int
         Day =>  $some_value, # int
       },
     },
     LocalDateTime =>  { # ONVIF::Device::Types::DateTime
       Time =>  { # ONVIF::Device::Types::Time
         Hour =>  $some_value, # int
         Minute =>  $some_value, # int
         Second =>  $some_value, # int
       },
       Date =>  { # ONVIF::Device::Types::Date
         Year =>  $some_value, # int
         Month =>  $some_value, # int
         Day =>  $some_value, # int
       },
     },
     Extension =>  { # ONVIF::Device::Types::SystemDateTimeExtension
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

