.class public Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    }
.end annotation


# static fields
.field protected static final ALREADY_SUCCESS:I = 0x1

.field protected static final DEVICE_TYPE:I = 0x1

.field public static final ENCODING_TYPE:Ljava/lang/String; = "UTF8"

.field public static final RETRY_BODY:Ljava/lang/String; = "body"

.field public static final RETRY_PUSH_TYPE:Ljava/lang/String; = "pushType"

.field private static final TAG:Ljava/lang/String;

.field private static existProxy:Z

.field private static params:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->params:Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPushTypeFromBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SPP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    const-string v0, "SPP"

    goto :goto_0

    :cond_0
    const-string v1, "GCM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v2, v1, :cond_1

    const-string v0, "GCM"

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getResponseMsg(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF8"

    invoke-direct {v4, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_2
    nop

    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1
    :goto_4
    goto :goto_9

    :catchall_0
    move-exception v3

    goto/16 :goto_a

    :catch_1
    move-exception v3

    :try_start_2
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_6

    :cond_2
    :goto_5
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :goto_6
    nop

    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_3
    move-exception v3

    :try_start_4
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnsupportedEncodingException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_4
    move-exception v3

    goto :goto_8

    :cond_3
    :goto_7
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :goto_8
    nop

    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :goto_a
    nop

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_b

    :catch_5
    move-exception v4

    goto :goto_c

    :cond_4
    :goto_b
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_d

    :goto_c
    nop

    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_5
    :goto_d
    throw v3
.end method

.method public static httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 3

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->returnMGResult(Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    return-object v0
.end method

.method public static httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 3

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->returnDMResult(Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    return-object v0
.end method

.method public static httpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 10

    invoke-static {}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->setSocketFactory()Lcom/samsung/android/rlc/util/RMMSSLSocketFactory;

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->existProxy:Z

    const/4 v1, -0x1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string v4, "Content-Type"

    const-string/jumbo v5, "text/xml"

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x4e20

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-static {}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->setSocketFactory()Lcom/samsung/android/rlc/util/RMMSSLSocketFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v6

    move v1, v6

    const-string v6, ""

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_0

    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response Code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v7, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-direct {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;-><init>()V

    move-object v0, v7

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->getResponseMsg(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setResponse(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setHttpStatusCode(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestHttp] IOException- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[requestHttp] UnsupportedEncodingException- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method public static returnDMResult(Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/rlc/util/XMLUtil;

    invoke-direct {v1}, Lcom/samsung/android/rlc/util/XMLUtil;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponse()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/rlc/util/XMLUtil;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    invoke-virtual {p0, v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setResponseBean(Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/rlc/util/XMLUtil;

    invoke-direct {v1}, Lcom/samsung/android/rlc/util/XMLUtil;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponse()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/rlc/vo/ErrorResponseVO;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/rlc/util/XMLUtil;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/rlc/vo/ErrorResponseVO;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "returnDMResult] - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/ErrorResponseVO;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    invoke-direct {v2}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/ErrorResponseVO;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/ErrorResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->setErrorDescription(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/ErrorResponseVO;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->setData(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setResponseBean(Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;)V

    invoke-virtual {p0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v3

    const/16 v4, 0x193

    if-ne v3, v4, :cond_1

    const-string v3, "RDM-4030"

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/ErrorResponseVO;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x191

    invoke-virtual {p0, v3}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setHttpStatusCode(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static returnMGResult(Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 4

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/rlc/util/XMLUtil;

    invoke-direct {v1}, Lcom/samsung/android/rlc/util/XMLUtil;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponse()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/rlc/util/XMLUtil;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;

    invoke-virtual {p0, v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->setResponseDeliveryBean(Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;)V

    :cond_0
    return-object p0
.end method

.method public static declared-synchronized saveServerUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DMServer"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MGServer"

    invoke-static {p0, v1, p2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    monitor-exit v0

    return-void
.end method

.method private static setSocketFactory()Lcom/samsung/android/rlc/util/RMMSSLSocketFactory;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v3, "AndroidCAStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    nop

    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    const-string/jumbo v7, "system:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v5, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    goto :goto_1

    :cond_0
    const-string/jumbo v7, "user:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v5, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    new-instance v5, Lcom/samsung/android/rlc/util/RMMSSLSocketFactory;

    invoke-direct {v5, v2}, Lcom/samsung/android/rlc/util/RMMSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
