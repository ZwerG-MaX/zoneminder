package ONVIF::Device::Types::AudioEncoderConfiguration;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(ONVIF::Device::Types::ConfigurationEntity);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Name_of :ATTR(:get<Name>);
my %UseCount_of :ATTR(:get<UseCount>);
my %Encoding_of :ATTR(:get<Encoding>);
my %Bitrate_of :ATTR(:get<Bitrate>);
my %SampleRate_of :ATTR(:get<SampleRate>);
my %Multicast_of :ATTR(:get<Multicast>);
my %SessionTimeout_of :ATTR(:get<SessionTimeout>);

__PACKAGE__->_factory(
    [ qw(        Name
        UseCount
        Encoding
        Bitrate
        SampleRate
        Multicast
        SessionTimeout

    ) ],
    {
        'Name' => \%Name_of,
        'UseCount' => \%UseCount_of,
        'Encoding' => \%Encoding_of,
        'Bitrate' => \%Bitrate_of,
        'SampleRate' => \%SampleRate_of,
        'Multicast' => \%Multicast_of,
        'SessionTimeout' => \%SessionTimeout_of,
    },
    {
        'Name' => 'ONVIF::Device::Types::Name',
        'UseCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Encoding' => 'ONVIF::Device::Types::AudioEncoding',
        'Bitrate' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'SampleRate' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Multicast' => 'ONVIF::Device::Types::MulticastConfiguration',
        'SessionTimeout' => 'SOAP::WSDL::XSD::Typelib::Builtin::duration',
    },
    {

        'Name' => 'Name',
        'UseCount' => 'UseCount',
        'Encoding' => 'Encoding',
        'Bitrate' => 'Bitrate',
        'SampleRate' => 'SampleRate',
        'Multicast' => 'Multicast',
        'SessionTimeout' => 'SessionTimeout',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::AudioEncoderConfiguration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AudioEncoderConfiguration from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Encoding


=item * Bitrate


=item * SampleRate


=item * Multicast


=item * SessionTimeout




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::AudioEncoderConfiguration
   Encoding => $some_value, # AudioEncoding
   Bitrate =>  $some_value, # int
   SampleRate =>  $some_value, # int
   Multicast =>  { # ONVIF::Device::Types::MulticastConfiguration
     Address =>  { # ONVIF::Device::Types::IPAddress
       Type => $some_value, # IPType
       IPv4Address => $some_value, # IPv4Address
       IPv6Address => $some_value, # IPv6Address
     },
     Port =>  $some_value, # int
     TTL =>  $some_value, # int
     AutoStart =>  $some_value, # boolean
   },
   SessionTimeout =>  $some_value, # duration
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

