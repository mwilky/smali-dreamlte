.class public abstract Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;
.super Ljava/lang/Object;
.source "RestfulClient.java"


# static fields
.field public static final RESPONSE_FAIL:I = 0x2

.field public static final RESPONSE_RETRY:I = 0x3

.field public static final RESPONSE_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBody:Lorg/json/JSONObject;

.field private mMethod:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mMethod:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mBody:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected dumpError(Ljava/net/HttpURLConnection;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    nop

    :goto_2
    return-void
.end method

.method protected dumpHeader(Ljava/net/HttpURLConnection;)V
    .locals 7

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected dumpResponse(Ljava/net/HttpURLConnection;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    throw v1
.end method

.method public execute(Z)I
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    move-object v4, v0

    const/4 v5, 0x2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    const/4 v7, 0x1

    const/16 v0, 0x7530

    if-eqz p1, :cond_0

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    move-object v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v8, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Accept"

    const-string v9, "application/xml"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Authorization"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getAuthorization()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v8, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v3, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Accept"

    const-string v9, "application/xml"

    invoke-virtual {v3, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Authorization"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getAuthorization()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v3, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v8, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    const/16 v0, 0x191

    const/16 v10, 0x193

    const/16 v11, 0xc8

    if-eqz p1, :cond_f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    sget-object v13, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "responseCode: "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v12, v11, :cond_4

    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljava/net/HttpURLConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string v9, "Header Fail, But response OK."

    invoke-static {v0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResult(Ljava/net/HttpURLConnection;)Z

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_2
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "urlConnection.disconnect()"

    invoke-static {v0, v5}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return v7

    :cond_4
    if-ne v12, v10, :cond_7

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResultBlock()V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "urlConnection.disconnect()"

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_6

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v7, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_3
    return v5

    :cond_7
    if-ne v12, v0, :cond_b

    :try_start_4
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string v7, "Get TOKEN from first HTTP_UNAUTHORIZED"

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljava/net/HttpURLConnection;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string v7, "No TOKEN!"

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    nop

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "urlConnection.disconnect()"

    invoke-static {v0, v5}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_a

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_4
    const/4 v5, 0x3

    return v5

    :cond_b
    :try_start_6
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "response Fail. responseCode is :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljava/net/HttpURLConnection;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string v7, "Header Fail"

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v1, v12, v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onError(ILjava/net/HttpURLConnection;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_d
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "urlConnection.disconnect()"

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_e

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v7, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_5
    return v5

    :cond_f
    :try_start_8
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v9

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "responseCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v9, v11, :cond_13

    invoke-virtual {v1, v3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string v10, "Header Fail, But response OK."

    invoke-static {v0, v10}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v1, v3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResult(Ljavax/net/ssl/HttpsURLConnection;)Z

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    nop

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_11
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "urlConnection.disconnect()"

    invoke-static {v0, v5}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_12

    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_6
    return v7

    :cond_13
    if-ne v9, v10, :cond_16

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResultBlock()V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    nop

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_14
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "urlConnection.disconnect()"

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_15

    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v7, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_15
    :goto_7
    return v5

    :cond_16
    if-ne v9, v0, :cond_1a

    :try_start_c
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string v7, "Get TOKEN from first HTTP_UNAUTHORIZED"

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string v7, "No TOKEN!"

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_17
    nop

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_18
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "urlConnection.disconnect()"

    invoke-static {v0, v5}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_19

    :try_start_d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_19
    :goto_8
    const/4 v5, 0x3

    return v5

    :cond_1a
    :try_start_e
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "response Fail. responseCode is :"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string v7, "Header Fail"

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v1, v9, v3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onError(ILjavax/net/ssl/HttpsURLConnection;)V
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    nop

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1c
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "urlConnection.disconnect()"

    invoke-static {v0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1d

    :try_start_f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v7, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d
    :goto_9
    return v5

    :catchall_0
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    goto :goto_c

    :catch_8
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1e
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "urlConnection.disconnect()"

    invoke-static {v0, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_21

    :try_start_11
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    :goto_a
    goto :goto_b

    :catch_9
    move-exception v0

    move-object v6, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_a
    move-exception v0

    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1f
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "urlConnection.disconnect()"

    invoke-static {v0, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_21

    :try_start_13
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_a

    :catch_b
    move-exception v0

    :try_start_14
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_20
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "urlConnection.disconnect()"

    invoke-static {v0, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_21

    :try_start_15
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    goto :goto_a

    :cond_21
    :goto_b
    return v5

    :goto_c
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_22
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "urlConnection.disconnect()"

    invoke-static {v0, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_23

    :try_start_16
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    move-object v6, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_23
    :goto_d
    throw v2
.end method

.method public abstract getAuthorization()Ljava/lang/String;
.end method

.method public getBody()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public getMD5Digest(Ljava/lang/String;)[B
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onError(ILjava/net/HttpURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onError(ILjavax/net/ssl/HttpsURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onReponseHeader(Ljava/net/HttpURLConnection;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onResult(Ljava/net/HttpURLConnection;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onResult(Ljavax/net/ssl/HttpsURLConnection;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onResultBlock()V
    .locals 0

    return-void
.end method
