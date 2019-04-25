.class Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
.super Ljava/lang/Object;
.source "EnterpriseProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnection"
.end annotation


# instance fields
.field private authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

.field private clientConnection:Ljava/net/Socket;

.field private credentials:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getSource()Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;)V

    return-void
.end method

.method private convertStringUrl(Ljava/lang/String;)Ljava/net/URI;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private discoverProxyAuthenticator(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxyAuthenticator()Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v1, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$100(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->shouldRemoveHeaderLine(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    return-void
.end method

.method private getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v1, :cond_1

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v2, :cond_2

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getExternalProxy()Landroid/net/ProxyInfo;
    .locals 2

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$500()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$600(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->retrieveEnterpriseProxy(Z)Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$502(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$500()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method private getExternalProxyList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$400(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getExternalProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->convertStringUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "EnterpriseProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is on proxy exclusion list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "EnterpriseProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieved external proxy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v6

    invoke-static {v5, v6}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/net/PacProxySelector;

    invoke-direct {v3}, Landroid/net/PacProxySelector;-><init>()V

    invoke-virtual {v3, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-object v0
.end method

.method private getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isClientConnectionAlive()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$800()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, ","

    const-string/jumbo v2, "|"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v3, ".*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    return v2

    :cond_5
    :goto_2
    return v0
.end method

.method private readProxyCredentialsIfNeeded(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$400(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$600(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ConnectivityService;->retrieveProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private saveAuthCache(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;)V
    .locals 2

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$800()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$800()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V

    const-string v0, "Connection: close"

    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method private sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method private shouldRemoveHeaderLine(Ljava/lang/String;)Z
    .locals 9

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "connection"

    const/4 v7, 0x0

    const-string v3, "connection"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "proxy-connection"

    const/4 v7, 0x0

    const-string/jumbo v3, "proxy-connection"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method private skipToRequestBody(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-void
.end method

.method private startCredentialsDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x50800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdm"

    const-string v2, "com.samsung.android.mdm.EnterpriseProxyAuthDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "proxy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$700(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v13, p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->isClientConnectionAlive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getRequestLine()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    move-object v14, v0

    const-string v0, " "

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    array-length v0, v15

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void

    :cond_2
    const/4 v0, 0x0

    aget-object v1, v15, v0

    move-object v12, v1

    const/4 v1, 0x1

    aget-object v2, v15, v1

    const/4 v3, 0x2

    aget-object v6, v15, v3

    const/4 v4, 0x0

    const-string v5, "CONNECT"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v0

    move-object v7, v0

    array-length v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    if-ge v0, v3, :cond_3

    const/16 v0, 0x1bb

    goto :goto_1

    :cond_3
    :try_start_1
    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    nop

    :goto_1
    nop

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "https://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    return-void

    :cond_4
    :try_start_3
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v0
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    if-gez v0, :cond_5

    const/16 v0, 0x50

    :cond_5
    nop

    :goto_2
    move-object v11, v2

    move-object/from16 v16, v4

    move-object v10, v7

    move v8, v0

    :try_start_4
    invoke-direct {v13, v11}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getExternalProxyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object/from16 v17, v1

    move-object v1, v0

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    move-object v5, v0

    :try_start_5
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v5, v0}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    if-nez v0, :cond_8

    :try_start_6
    const-string v0, "EnterpriseProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending traffic to proxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    new-instance v2, Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    invoke-direct {v13, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v13, v2, v15}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->discoverProxyAuthenticator(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->isCredentialRequired()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-direct {v13, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->readProxyCredentialsIfNeeded(Ljava/lang/String;)V

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    invoke-interface {v4, v0, v1, v15}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    move-object/from16 v20, v0

    :try_start_7
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    move-object/from16 v21, v9

    move-object/from16 v9, v20

    :try_start_8
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    move-object/from16 v22, v9

    :try_start_9
    iget-object v9, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    invoke-virtual {v0, v2, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    move-object/from16 v17, v22

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v9, v5

    move-object/from16 v17, v22

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v22, v9

    move-object v9, v5

    move-object/from16 v17, v22

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 v22, v20

    move-object v9, v5

    move-object/from16 v17, v22

    goto/16 :goto_9

    :cond_6
    move-object/from16 v21, v9

    :try_start_a
    new-instance v0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    iget-object v9, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-direct {v0, v9, v5, v14, v4}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;-><init>(Ljava/net/Socket;Ljava/net/Proxy;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V

    invoke-direct {v13, v2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->saveAuthCache(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;)V

    invoke-direct {v13, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->startCredentialsDialog(Ljava/lang/String;)V

    return-void

    :cond_7
    move-object/from16 v19, v0

    move-object/from16 v21, v9

    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    nop

    move-object v9, v5

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v21, v9

    :goto_5
    move-object v9, v5

    goto :goto_9

    :cond_8
    move-object/from16 v21, v9

    :try_start_b
    const-string v0, "EnterpriseProxyServer"

    const-string v2, "Direct proxy"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, v10, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    :try_start_c
    const-string v0, "CONNECT"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    if-eqz v0, :cond_9

    :try_start_d
    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-direct {v13, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->skipToRequestBody(Ljava/net/Socket;)V

    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    const-string v1, "HTTP/1.1 200 OK\n"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    move-object v9, v5

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :cond_9
    :try_start_e
    iget-object v2, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    move-object v1, v13

    move-object v4, v12

    move-object v9, v5

    move-object/from16 v5, v16

    :try_start_f
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    :goto_6
    move-object v1, v3

    :goto_7
    goto :goto_a

    :catch_7
    move-exception v0

    move-object v1, v3

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v9, v5

    move-object v1, v3

    goto :goto_9

    :catch_9
    move-exception v0

    goto :goto_8

    :catch_a
    move-exception v0

    move-object/from16 v21, v9

    :goto_8
    move-object v9, v5

    :goto_9
    :try_start_10
    const-string v2, "EnterpriseProxyServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to connect to proxy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_a
    if-eqz v1, :cond_a

    goto :goto_b

    :cond_a
    nop

    move-object/from16 v9, v21

    goto/16 :goto_3

    :cond_b
    :goto_b
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v9, Ljava/net/Socket;

    invoke-direct {v9, v10, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const-string v0, "CONNECT"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-direct {v13, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->skipToRequestBody(Ljava/net/Socket;)V

    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    const-string v1, "HTTP/1.1 200 OK\n"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    move-object v2, v7

    move v3, v8

    move-object v4, v10

    move-object v5, v11

    move-object v1, v12

    goto :goto_c

    :cond_c
    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move-object v2, v7

    move-object v7, v13

    move v3, v8

    move-object v8, v0

    move-object v4, v10

    move-object v10, v12

    move-object v5, v11

    move-object/from16 v11, v16

    move-object v1, v12

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    :goto_c
    move-object v7, v1

    move-object v1, v9

    goto :goto_d

    :cond_d
    move-object v2, v7

    move v3, v8

    move-object v4, v10

    move-object v5, v11

    move-object v7, v12

    :goto_d
    if-eqz v1, :cond_f

    const-string v0, "CONNECT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v17, 0x0

    :cond_e
    move-object/from16 v0, v17

    iget-object v8, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-static {v8, v1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    :cond_f
    goto :goto_e

    :catch_b
    move-exception v0

    move-object v7, v12

    iget-object v1, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    return-void

    :catch_c
    move-exception v0

    const-string v1, "EnterpriseProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem Proxying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    :try_start_11
    iget-object v0, v13, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_f

    :catch_d
    move-exception v0

    :goto_f
    return-void
.end method
