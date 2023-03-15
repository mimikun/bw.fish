#compdef _bw bw

function _bw {
  local -a commands

  _arguments -C \
    '--pretty[Format output. JSON is tabbed with two spaces.]' \
    '--raw[Return raw output instead of a descriptive message.]' \
    '--response[Return a JSON formatted version of response output.]' \
    '--cleanexit[Exit with a success exit code (0) unless an error is thrown.]' \
    '--quiet[Don'"'"'t return anything to stdout.]' \
    '--nointeraction[Do not prompt for interactive user input.]' \
    '--session[Pass session key instead of reading from env.]' \
    '(-v --version)'{-v,--version}'[output the version number]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
    cmnds)
      commands=(
        "login:Log into a user account."
        "logout:Log out of the current user account."
        "lock:Lock the vault and destroy active session keys."
        "unlock:Unlock the vault and return a new session key."
        "sync:Pull the latest vault data from server."
        "generate:Generate a password/passphrase."
        "encode:Base 64 encode stdin."
        "config:Configure CLI settings."
        "update:Check for updates."
        "completion:Generate shell completions."
        "status:Show server, last sync, user information, and vault status."
        "serve:Start a RESTful API webserver."
        "list:List an array of objects from the vault."
        "get:Get an object from the vault."
        "create:Create an object in the vault."
        "edit:Edit an object from the vault."
        "delete:Delete an object from the vault."
        "restore:Restores an object from the trash."
        "move:Move an item to an organization."
        "confirm:Confirm an object to the organization."
        "import:Import vault data from a file."
        "export:Export vault data to a CSV or JSON file."
        "share:--DEPRECATED-- Move an item to an organization."
        "send:Work with Bitwarden sends. A Send can be quickly created using this command or subcommands can be used to fine-tune the Send"
        "receive:Access a Bitwarden Send from a url"
      )
      _describe "command" commands
      ;;
  esac

  case "$words[1]" in
    login)
      _bw_login
      ;;
    logout)
      _bw_logout
      ;;
    lock)
      _bw_lock
      ;;
    unlock)
      _bw_unlock
      ;;
    sync)
      _bw_sync
      ;;
    generate)
      _bw_generate
      ;;
    encode)
      _bw_encode
      ;;
    config)
      _bw_config
      ;;
    update)
      _bw_update
      ;;
    completion)
      _bw_completion
      ;;
    status)
      _bw_status
      ;;
    serve)
      _bw_serve
      ;;
    list)
      _bw_list
      ;;
    get)
      _bw_get
      ;;
    create)
      _bw_create
      ;;
    edit)
      _bw_edit
      ;;
    delete)
      _bw_delete
      ;;
    restore)
      _bw_restore
      ;;
    move)
      _bw_move
      ;;
    confirm)
      _bw_confirm
      ;;
    import)
      _bw_import
      ;;
    export)
      _bw_export
      ;;
    share)
      _bw_share
      ;;
    send)
      _bw_send
      ;;
    receive)
      _bw_receive
      ;;
  esac
}

function _bw_login {
  _arguments -C \
    '--method[Two-step login method.]' \
    '--code[Two-step login code.]' \
    '--sso[Log in with Single-Sign On.]' \
    '--apikey[Log in with an Api Key.]' \
    '--passwordenv[Environment variable storing your password]' \
    '--passwordfile[Path to a file containing your password as its first line]' \
    '--check[Check login status.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_logout {
  
}

function _bw_lock {
  
}

function _bw_unlock {
  _arguments -C \
    '--check[Check lock status.]' \
    '--passwordenv[Environment variable storing your password]' \
    '--passwordfile[Path to a file containing your password as its first line]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_sync {
  _arguments -C \
    '(-f --force)'{-f,--force}'[Force a full sync.]' \
    '--last[Get the last sync date.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_generate {
  _arguments -C \
    '(-u --uppercase)'{-u,--uppercase}'[Include uppercase characters.]' \
    '(-l --lowercase)'{-l,--lowercase}'[Include lowercase characters.]' \
    '(-n --number)'{-n,--number}'[Include numeric characters.]' \
    '(-s --special)'{-s,--special}'[Include special characters.]' \
    '(-p --passphrase)'{-p,--passphrase}'[Generate a passphrase.]' \
    '--length[Length of the password.]' \
    '--words[Number of words.]' \
    '--separator[Word separator.]' \
    '(-c --capitalize)'{-c,--capitalize}'[Title case passphrase.]' \
    '--includeNumber[Passphrase includes number.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_encode {
  
}

function _bw_config {
  _arguments -C \
    '--web-vault[Provides a custom web vault URL that differs from the base URL.]' \
    '--api[Provides a custom API URL that differs from the base URL.]' \
    '--identity[Provides a custom identity URL that differs from the base URL.]' \
    '--icons[Provides a custom icons service URL that differs from the base URL.]' \
    '--notifications[Provides a custom notifications URL that differs from the base URL.]' \
    '--events[Provides a custom events URL that differs from the base URL.]' \
    '--key-connector[Provides the URL for your Key Connector server.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_update {
  
}

function _bw_completion {
  _arguments -C \
    '--shell[Shell to generate completions for.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_status {
  
}

function _bw_serve {
  _arguments -C \
    '--hostname[The hostname to bind your API webserver to.]' \
    '--port[The port to run your API webserver on.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_list {
  _arguments -C \
    '--search[Perform a search on the listed objects.]' \
    '--url[Filter items of type login with a url-match search.]' \
    '--folderid[Filter items by folder id.]' \
    '--collectionid[Filter items by collection id.]' \
    '--organizationid[Filter items or collections by organization id.]' \
    '--trash[Filter items that are deleted and in the trash.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_get {
  _arguments -C \
    '--itemid[Attachment'"'"'s item id.]' \
    '--output[Output directory or filename for attachment.]' \
    '--organizationid[Organization id for an organization object.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_create {
  _arguments -C \
    '--file[Path to file for attachment.]' \
    '--itemid[Attachment'"'"'s item id.]' \
    '--organizationid[Organization id for an organization object.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_edit {
  _arguments -C \
    '--organizationid[Organization id for an organization object.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_delete {
  _arguments -C \
    '--itemid[Attachment'"'"'s item id.]' \
    '--organizationid[Organization id for an organization object.]' \
    '(-p --permanent)'{-p,--permanent}'[Permanently deletes the item instead of soft-deleting it (item only).]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_restore {
  
}

function _bw_move {
  
}

function _bw_confirm {
  _arguments -C \
    '--organizationid[Organization id for an organization object.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_import {
  _arguments -C \
    '--formats[List formats]' \
    '--organizationid[ID of the organization to import to.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_export {
  _arguments -C \
    '--output[Output directory or filename.]' \
    '--format[Export file format.]' \
    '--password[Use password to encrypt instead of your Bitwarden account encryption key. Only applies to the encrypted_json format.]' \
    '--organizationid[Organization id for an organization.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_share {
  
}

function _bw_send {
  local -a commands

  _arguments -C \
    '(-f --file)'{-f,--file}'[Specifies that <data> is a filepath]' \
    '(-d --deleteInDays)'{-d,--deleteInDays}'[The number of days in the future to set deletion date, defaults to 7]' \
    '(-a --maxAccessCount)'{-a,--maxAccessCount}'[The amount of max possible accesses.]' \
    '--hidden[Hide <data> in web by default. Valid only if --file is not set.]' \
    '(-n --name)'{-n,--name}'[The name of the Send. Defaults to a guid for text Sends and the filename for files.]' \
    '--notes[Notes to add to the Send.]' \
    '--fullObject[Specifies that the full Send object should be returned rather than just the access url.]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
    cmnds)
      commands=(
        "list:List all the Sends owned by you"
        "template:Get json templates for send objects"
        "get:Get Sends owned by you."
        "receive:Access a Bitwarden Send from a url"
        "create:create a Send"
        "edit:edit a Send"
        "remove-password:removes the saved password from a Send."
        "delete:delete a Send"
      )
      _describe "command" commands
      ;;
  esac

  case "$words[1]" in
    list)
      _bw_send_list
      ;;
    template)
      _bw_send_template
      ;;
    get)
      _bw_send_get
      ;;
    receive)
      _bw_send_receive
      ;;
    create)
      _bw_send_create
      ;;
    edit)
      _bw_send_edit
      ;;
    remove-password)
      _bw_send_remove-password
      ;;
    delete)
      _bw_send_delete
      ;;
  esac
}

function _bw_send_list {
  
}

function _bw_send_template {
  
}

function _bw_send_get {
  _arguments -C \
    '--output[Output directory or filename for attachment.]' \
    '--text[Specifies to return the text content of a Send]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_send_receive {
  _arguments -C \
    '--password[Password needed to access the Send.]' \
    '--passwordenv[Environment variable storing the Send'"'"'s password]' \
    '--passwordfile[Path to a file containing the Sends password as its first line]' \
    '--obj[Return the Send'"'"'s json object rather than the Send's content]' \
    '--output[Specify a file path to save a File-type Send to]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_send_create {
  _arguments -C \
    '--file[file to Send. Can also be specified in parent'"'"'s JSON.]' \
    '--text[text to Send. Can also be specified in parent'"'"'s JSON.]' \
    '--hidden[text hidden flag. Valid only with the --text option.]' \
    '--password[optional password to access this Send. Can also be specified in JSON]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_send_edit {
  _arguments -C \
    '--itemid[Overrides the itemId provided in [encodedJson]]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}

function _bw_send_remove-password {
  
}

function _bw_send_delete {
  
}

function _bw_receive {
  _arguments -C \
    '--password[Password needed to access the Send.]' \
    '--passwordenv[Environment variable storing the Send'"'"'s password]' \
    '--passwordfile[Path to a file containing the Sends password as its first line]' \
    '--obj[Return the Send'"'"'s json object rather than the Send's content]' \
    '--output[Specify a file path to save a File-type Send to]' \
    '(-h --help)'{-h,--help}'[output usage information]' \
    "*::arg:->args"
}Usage: bw [options] [command]

Options:
  --pretty                                    Format output. JSON is tabbed with two spaces.
  --raw                                       Return raw output instead of a descriptive message.
  --response                                  Return a JSON formatted version of response output.
  --cleanexit                                 Exit with a success exit code (0) unless an error is thrown.
  --quiet                                     Don't return anything to stdout.
  --nointeraction                             Do not prompt for interactive user input.
  --session <session>                         Pass session key instead of reading from env.
  -v, --version                               output the version number
  -h, --help                                  display help for command

Commands:
  login [options] [email] [password]          Log into a user account.
  logout                                      Log out of the current user account.
  lock                                        Lock the vault and destroy active session keys.
  unlock [options] [password]                 Unlock the vault and return a new session key.
  sync [options]                              Pull the latest vault data from server.
  generate [options]                          Generate a password/passphrase.
  encode                                      Base 64 encode stdin.
  config [options] <setting> [value]          Configure CLI settings.
  update                                      Check for updates.
  completion [options]                        Generate shell completions.
  status                                      Show server, last sync, user information, and vault status.
  serve [options]                             Start a RESTful API webserver.
  list [options] <object>                     List an array of objects from the vault.
  get [options] <object> <id>                 Get an object from the vault.
  create [options] <object> [encodedJson]     Create an object in the vault.
  edit [options] <object> <id> [encodedJson]  Edit an object from the vault.
  delete [options] <object> <id>              Delete an object from the vault.
  restore <object> <id>                       Restores an object from the trash.
  move <id> <organizationId> [encodedJson]    Move an item to an organization.
  confirm [options] <object> <id>             Confirm an object to the organization.
  import [options] [format] [input]           Import vault data from a file.
  export [options]                            Export vault data to a CSV or JSON file.
  share <id> <organizationId> [encodedJson]   --DEPRECATED-- Move an item to an organization.
  send [options] <data>                       Work with Bitwarden sends. A Send can be quickly created using this command or subcommands can be used to fine-tune the Send
  receive [options] <url>                     Access a Bitwarden Send from a url
  help [command]                              display help for command

  Examples:

    bw login
    bw lock
    bw unlock myPassword321
    bw list --help
    bw list items --search google
    bw get item 99ee88d2-6046-4ea7-92c2-acac464b1412
    bw get password google.com
    echo '{"name":"My Folder"}' | bw encode
    bw create folder eyJuYW1lIjoiTXkgRm9sZGVyIn0K
    bw edit folder c7c7b60b-9c61-40f2-8ccd-36c49595ed72 eyJuYW1lIjoiTXkgRm9sZGVyMiJ9Cg==
    bw delete item 99ee88d2-6046-4ea7-92c2-acac464b1412
    bw generate -lusn --length 18
    bw config server https://bitwarden.example.com
    bw send -f ./file.ext
    bw send "text to send"
    echo "text to send" | bw send
    bw receive https://vault.bitwarden.com/#/send/rg3iuoS_Akm2gqy6ADRHmg/Ht7dYjsqjmgqUM3rjzZDSQ
