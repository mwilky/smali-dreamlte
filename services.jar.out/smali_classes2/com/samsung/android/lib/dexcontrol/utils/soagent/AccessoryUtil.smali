.class public Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;
.super Ljava/lang/Object;
.source "AccessoryUtil.java"


# static fields
.field public static final API_SERVER:Ljava/lang/String; = "https://dir-apis.samsungdm.com"

.field public static final API_TEST_SERVER:Ljava/lang/String; = "http://dir-stg-apis.samsungdiroute.net:8080"

.field private static final TAG:Ljava/lang/String;

.field private static clientPasswordDict:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->TAG:Ljava/lang/String;

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->clientPasswordDict:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0xft
        0x5t
        0xbt
        0x13t
        0x1ct
        0x17t
        0x2ft
        0x23t
        0x2ct
        0x2t
        0xet
        0x6t
        0xat
        0x12t
        0xdt
        0x16t
        0x1at
        0x20t
        0x2ft
        0x3t
        0xdt
        0x7t
        0x9t
        0x11t
        0x1et
        0x15t
        0x19t
        0x21t
        0x2dt
        0x4t
        0xct
        0x8t
        0x3ft
        0x10t
        0x1ft
        0x14t
        0x18t
        0x22t
        0x2et
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertId(Ljava/lang/String;)Ljava/lang/String;
    .locals 26

    move-object/from16 v1, p0

    if-nez v1, :cond_0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "null ID"

    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :cond_0
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const/4 v0, 0x0

    move-wide v8, v4

    move-wide v3, v2

    move v2, v0

    :goto_0
    add-int/lit8 v5, v6, -0x1

    if-ge v2, v5, :cond_1

    aget-byte v5, v7, v2

    int-to-long v10, v5

    sget-object v5, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->clientPasswordDict:[B

    aget-byte v5, v5, v2

    int-to-long v12, v5

    mul-long/2addr v10, v12

    add-long/2addr v3, v10

    aget-byte v5, v7, v2

    int-to-long v10, v5

    add-int/lit8 v5, v6, -0x1

    sub-int/2addr v5, v2

    aget-byte v5, v7, v5

    int-to-long v12, v5

    mul-long/2addr v10, v12

    sget-object v5, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->clientPasswordDict:[B

    aget-byte v5, v5, v2

    int-to-long v12, v5

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->getServerID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v13, v11, v0

    shr-int/lit8 v13, v13, 0x4

    const/16 v14, 0xf

    and-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    aget-byte v15, v11, v13

    and-int/2addr v15, v14

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v15, v11, v13

    shr-int/lit8 v15, v15, 0x4

    and-int/2addr v15, v14

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x3

    aget-byte v16, v11, v15

    shr-int/lit8 v16, v16, 0x4

    and-int v14, v14, v16

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v15, v6, -0x2

    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    rem-int/lit8 v14, v13, 0x2

    div-int/lit8 v15, v13, 0x2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/2addr v15, v14

    const/16 v17, 0x0

    :goto_1
    move/from16 v18, v17

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v0, v18

    const/4 v2, 0x3

    if-ge v0, v2, :cond_4

    move/from16 v16, v15

    :goto_2
    move/from16 v21, v16

    move/from16 v2, v21

    if-ge v2, v13, :cond_3

    :try_start_1
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v16
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v22, v16

    sub-int v16, v13, v2

    add-int/lit8 v16, v16, -0x1

    move-wide/from16 v23, v3

    add-int v3, v16, v14

    move v4, v2

    :goto_3
    if-le v4, v3, :cond_2

    move-object/from16 v25, v5

    add-int/lit8 v5, v4, -0x1

    :try_start_2
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v5, v25

    goto :goto_3

    :cond_2
    move-object/from16 v25, v5

    move/from16 v4, v22

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v16, v2, 0x1

    move-wide/from16 v3, v23

    move-object/from16 v5, v25

    const/4 v2, 0x3

    goto :goto_2

    :catch_0
    move-exception v0

    move-wide/from16 v23, v3

    goto :goto_4

    :cond_3
    move-wide/from16 v23, v3

    move-object/from16 v25, v5

    add-int/lit8 v17, v0, 0x1

    move-object/from16 v0, v19

    move-object/from16 v2, v20

    goto :goto_1

    :cond_4
    move-wide/from16 v23, v3

    move-object/from16 v25, v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v20, v2

    move-wide/from16 v23, v3

    :goto_4
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public static getServerID()Ljava/lang/String;
    .locals 1

    const-string v0, "fscw5mpc23"

    return-object v0
.end method

.method public static getServerPassword()Ljava/lang/String;
    .locals 1

    const-string v0, "99Q2ang60Wqx83cc2"

    return-object v0
.end method
