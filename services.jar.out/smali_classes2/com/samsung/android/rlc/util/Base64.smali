.class public Lcom/samsung/android/rlc/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/rlc/util/Base64;->ENCODE_TABLE:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/rlc/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/android/rlc/util/Base64;->DECODE_TABLE:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctInput([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    array-length v2, p0

    add-int/2addr v2, v1

    new-array v2, v2, [B

    move-object v0, v2

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v2, v0

    nop

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0x3d

    aput-byte v4, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    throw v1
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/rlc/util/Base64;->decode([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static decode([B)[B
    .locals 15

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [B

    return-object v1

    :cond_0
    array-length v1, p0

    const/4 v3, 0x4

    rem-int/2addr v1, v3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_7

    array-length v1, p0

    rem-int/2addr v1, v3

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/rlc/util/Base64;->correctInput([B)[B

    move-result-object v1

    move-object p0, v1

    :cond_1
    array-length v1, p0

    add-int/lit8 v5, v1, -0x2

    aget-byte v5, p0, v5

    const/16 v6, 0x3d

    const/4 v7, 0x2

    if-ne v5, v6, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v1, -0x1

    aget-byte v5, p0, v5

    if-ne v5, v6, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_0
    mul-int/lit8 v6, v1, 0x3

    div-int/2addr v6, v3

    sub-int/2addr v6, v5

    new-array v8, v6, [B

    move-object v0, v8

    new-array v8, v3, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v1, :cond_6

    rem-int/lit8 v11, v9, 0x4

    sget-object v12, Lcom/samsung/android/rlc/util/Base64;->DECODE_TABLE:[B

    aget-byte v13, p0, v9

    aget-byte v12, v12, v13

    aput-byte v12, v8, v11

    rem-int/lit8 v11, v9, 0x4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    add-int/lit8 v11, v10, 0x1

    aget-byte v13, v8, v2

    shl-int/2addr v13, v7

    and-int/lit16 v13, v13, 0xfc

    aget-byte v14, v8, v4

    shr-int/2addr v14, v3

    and-int/2addr v14, v12

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v0, v10

    if-ge v11, v6, :cond_4

    add-int/lit8 v10, v11, 0x1

    aget-byte v13, v8, v4

    shl-int/2addr v13, v3

    and-int/lit16 v13, v13, 0xf0

    aget-byte v14, v8, v7

    shr-int/2addr v14, v7

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v0, v11

    goto :goto_2

    :cond_4
    move v10, v11

    :goto_2
    if-ge v10, v6, :cond_5

    add-int/lit8 v11, v10, 0x1

    aget-byte v13, v8, v7

    shl-int/lit8 v13, v13, 0x6

    and-int/lit16 v13, v13, 0xc0

    aget-byte v12, v8, v12

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v0, v10

    move v10, v11

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Input length is invalid."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/rlc/util/Base64;->encode([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static encode(Ljava/lang/String;Z)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/rlc/util/Base64;->encode([BZ)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static encode([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/Base64;->encode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BZ)[B
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/rlc/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/samsung/android/rlc/util/Base64;->ENCODE_TABLE:[B

    :goto_0
    array-length v2, p0

    add-int/lit8 v3, v2, 0x2

    const/4 v4, 0x3

    div-int/2addr v3, v4

    mul-int/2addr v3, v4

    sub-int/2addr v3, v2

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, v2, 0x2

    rem-int/2addr v6, v4

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    div-int/2addr v5, v4

    new-array v6, v5, [B

    move-object v0, v6

    new-array v6, v4, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_1
    add-int v9, v2, v3

    if-ge v7, v9, :cond_3

    const/4 v9, 0x0

    if-ge v7, v2, :cond_1

    rem-int/lit8 v10, v7, 0x3

    aget-byte v11, p0, v7

    aput-byte v11, v6, v10

    goto :goto_2

    :cond_1
    rem-int/lit8 v10, v7, 0x3

    aput-byte v9, v6, v10

    :goto_2
    rem-int/lit8 v10, v7, 0x3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    add-int/lit8 v10, v8, 0x1

    aget-byte v12, v6, v9

    shr-int/2addr v12, v11

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v0, v8

    add-int/lit8 v8, v10, 0x1

    aget-byte v9, v6, v9

    shl-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0x30

    const/4 v12, 0x1

    aget-byte v13, v6, v12

    shr-int/lit8 v13, v13, 0x4

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v9, v13

    aget-byte v9, v1, v9

    aput-byte v9, v0, v10

    add-int/lit8 v9, v8, 0x1

    aget-byte v10, v6, v12

    shl-int/2addr v10, v11

    and-int/lit8 v10, v10, 0x3c

    aget-byte v12, v6, v11

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v4

    or-int/2addr v10, v12

    aget-byte v10, v1, v10

    aput-byte v10, v0, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v10, v6, v11

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v0, v9

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_4

    add-int/lit8 v8, v8, -0x1

    const/16 v7, 0x3d

    aput-byte v7, v0, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    goto :goto_5

    :goto_4
    nop

    const/4 v0, 0x0

    :goto_5
    return-object v0
.end method
