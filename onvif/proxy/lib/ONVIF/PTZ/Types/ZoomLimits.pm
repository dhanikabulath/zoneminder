package ONVIF::PTZ::Types::ZoomLimits;
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

my %Range_of :ATTR(:get<Range>);

__PACKAGE__->_factory(
    [ qw(        Range

    ) ],
    {
        'Range' => \%Range_of,
    },
    {
        'Range' => 'ONVIF::PTZ::Types::Space1DDescription',
    },
    {

        'Range' => 'Range',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::ZoomLimits

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ZoomLimits from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Range




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::ZoomLimits
   Range =>  { # ONVIF::PTZ::Types::Space1DDescription
     URI =>  $some_value, # anyURI
     XRange =>  { # ONVIF::PTZ::Types::FloatRange
       Min =>  $some_value, # float
       Max =>  $some_value, # float
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

