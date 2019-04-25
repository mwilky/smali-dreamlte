.class Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
.super Ljava/lang/Object;
.source "SdpServiceKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpServiceKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdpPolicyDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;
    }
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_PKG:Ljava/lang/String; = "pkg_name"

.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final DEBUG:Z = true

.field private static final ELEMENT_OWNER:Ljava/lang/String; = "owner"

.field private static final ELEMENT_PRIVILEGED_APP:Ljava/lang/String; = "privileged_app"

.field private static final ELEMENT_ROOT:Ljava/lang/String; = "engine_policy"

.field private static final MAX_SALT_LENGTH:I = 0x20


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/SdpServiceKeeper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->putPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->removePolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method private byteToHex([B)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p1, v3

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateHash([BLjava/io/File;)[B
    .locals 9

    const-string v0, "SHA-256"

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    const/16 v4, 0x400

    new-array v4, v4, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {v3, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    array-length v7, v5

    if-lez v7, :cond_1

    const-string v7, "SdpServiceKeeper"

    invoke-direct {p0, v5}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :goto_1
    nop

    :goto_2
    return-object v5

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_2
    :goto_3
    goto :goto_4

    :catch_3
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_4
    move-exception v3

    :try_start_6
    const-string v4, "SdpServiceKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to hash : missing algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :goto_4
    return-object v1

    :goto_5
    nop

    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_3
    :goto_6
    throw v1
.end method

.method private generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-object v0
.end method

.method private getPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    .locals 8

    new-instance v0, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;

    invoke-direct {v0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;-><init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->loadHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateHash([BLjava/io/File;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    const-string v5, "SdpServiceKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadPolicy :: generated hash : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SdpServiceKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadPolicy :: stored hash : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "SdpServiceKeeper"

    const-string v6, "Policy file tempered!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v5, v0}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    invoke-static {v0}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->access$400(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v3

    return-object v3

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    const-string v6, "SdpServiceKeeper"

    const-string/jumbo v7, "engine_poilcy xml io failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    :goto_1
    const-string v4, "SdpServiceKeeper"

    const-string v5, "No policy file or its hash"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/sdp_engine_policy_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private loadHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_sdp_policy_hash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/KeyProtector;->releaseMinor(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method private putPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    nop

    const/16 v1, -0x63

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    const-string/jumbo v5, "engine_policy"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string/jumbo v6, "owner"

    invoke-interface {v4, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    const-string v7, "alias"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    const-string/jumbo v8, "pkg_name"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-virtual {p2}, Lcom/android/server/sdp/engine/SdpPolicy;->getOwner()Lcom/samsung/android/knox/sdp/core/SdpDomain;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p2}, Lcom/android/server/sdp/engine/SdpPolicy;->getPrivilegedApps()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    const-string/jumbo v9, "privileged_app"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    const-string v10, "alias"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v10

    const-string/jumbo v11, "pkg_name"

    invoke-interface {v4, v11}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v8

    const-string/jumbo v9, "indent"

    const-string/jumbo v10, "yes"

    invoke-virtual {v8, v9, v10}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v10, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v10, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v9, v10}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-direct {p0, p1, v0}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->saveHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "SdpServiceKeeper"

    const-string/jumbo v2, "putPolicyLocked :: SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    const-string v2, "SdpServiceKeeper"

    const-string v3, "can\'t store hash to TIMA"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    const-string v3, "SdpServiceKeeper"

    const-string v4, " putPolicyLocked failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    const-string v3, "SdpServiceKeeper"

    const-string v4, " putPolicyLocked failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "SdpServiceKeeper"

    const-string v3, " putPolicyLocked failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xc

    return v2
.end method

.method private removePolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SdpServiceKeeper"

    const-string v2, "Couldn\'t remove policy file!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_sdp_policy_hash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "SdpServiceKeeper"

    const-string v2, " removePolicyLocked  failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/io/File;)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateHash([BLjava/io/File;)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_sdp_policy_hash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method


# virtual methods
.method public parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    invoke-interface {v3, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    return v0
.end method
