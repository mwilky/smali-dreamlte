.class public Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
.super Ljava/lang/Thread;
.source "EnterpriseSocketConnect.java"


# static fields
.field private static final CONNECT:Ljava/lang/String; = "CONNECT "

.field private static final CONTENT_LENGTH_HEADER_PREFIX:Ljava/lang/String; = "Content-Length: "

.field private static final DELETE:Ljava/lang/String; = "DELETE "

.field public static final EMPTY_CONTENT_LENGTH:I = -0x1

.field private static final GET:Ljava/lang/String; = "GET "

.field private static final HEAD:Ljava/lang/String; = "HEAD "

.field private static final OPTIONS:Ljava/lang/String; = "OPTIONS "

.field private static final PATCH:Ljava/lang/String; = "PATCH "

.field private static final POST:Ljava/lang/String; = "POST "

.field private static final PUT:Ljava/lang/String; = "PUT "

.field private static final TAG:Ljava/lang/String; = "EnterpriseSocketConnect"

.field private static final TRACE:Ljava/lang/String; = "TRACE "


# instance fields
.field private authHeader:Ljava/lang/String;

.field private from:Ljava/io/InputStream;

.field private to:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->start()V

    return-void
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "Proxy-Authorization: Basic "

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;

    invoke-direct {v1, p1, p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private static getContentLength(Ljava/lang/String;)I
    .locals 4

    const-string v0, "Content-Length: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "Content-Length: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "EnterpriseSocketConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArrayIndexOutOfBoundsException to extract content length from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "EnterpriseSocketConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException to extract content length from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_0
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private isLineARequest(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "GET "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "POST "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "HEAD "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "PUT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "DELETE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "TRACE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "OPTIONS "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "CONNECT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "PATCH "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private performCommunication()V
    .locals 5

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EnterpriseSocketConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while performing communication "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private performCommunicationWithHeader(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-static {v5, v4, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;ZI)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_3

    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-static {v5, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    :goto_1
    const/4 v3, 0x0

    if-nez v1, :cond_1

    nop

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->isLineARequest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->getContentLength(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-static {v4, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    nop

    const-string v5, "EnterpriseSocketConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while performing communication with header "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->performCommunicationWithHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->performCommunication()V

    :goto_0
    return-void
.end method
