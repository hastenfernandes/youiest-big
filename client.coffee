#client.coffee has trusted code for creating connections
l 'hi from client'

# connect runs on the client and updates the client version of the users WI object
# when users WI object is synced ot server before and after update hooks are fired

@connect =  (w) ->
    l 'hi from connect' , w
    
    #something like this WI.outbox.[w.id]=w

    #lower case, collection name is upper
    #w is assumed to be a well formed object with
    # w.from must be from somewhere, this tells us what it is

    # TODO from 'picture'
    # w.to can be to many things, these are attributes with w.to.[id].owner etc format
    # TODO to 'elias'
    # w.content like .title .body .url .cover etc
    # w.author .. defaults to logged in user or anon, but can be a expanded later
    # TODO this is added by the before update hook on server
    
    # w.creator .. meteor user id
    
    #above are required client side
    # w.grandfather this is the first .from in a chain and inherited


  