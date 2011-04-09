use Twiggy::Server;

$app = sub  {
      my $env = shift;
      return [
          '200',
          [ 'Content-Type' => 'text/plain' ],
          [ "Hello World" ], # or IO::Handle-like object
      ];
  };

my $server = Twiggy::Server->new(
      host => undef, #localhost
      port => 8080,
  );
  $server->register_service($app);

  AE::cv->recv;
