.class Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;
.super Ljava/lang/Object;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SntpClient"
.end annotation


# static fields
.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read32([BI)J
    .locals 13

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    and-int/lit8 v4, v0, 0x7f

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    and-int/lit16 v6, v1, 0x80

    if-ne v6, v5, :cond_1

    and-int/lit8 v6, v1, 0x7f

    add-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    and-int/lit16 v7, v2, 0x80

    if-ne v7, v5, :cond_2

    and-int/lit8 v7, v2, 0x7f

    add-int/2addr v7, v5

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v5, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/2addr v5, v8

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    add-long/2addr v8, v10

    return-wide v8
.end method

.method private readTimeStamp([BI)J
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->read32([BI)J

    move-result-wide v0

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->read32([BI)J

    move-result-wide v2

    const-wide v4, 0x83aa7e80L

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    mul-long/2addr v6, v2

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 13

    const-wide/16 v1, 0x3e8

    div-long v3, p3, v1

    mul-long v5, v3, v1

    sub-long v5, p3, v5

    const-wide v7, 0x83aa7e80L

    add-long/2addr v3, v7

    add-int/lit8 v7, p2, 0x1

    const/16 v8, 0x18

    shr-long v9, v3, v8

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, p1, p2

    add-int/lit8 v0, v7, 0x1

    const/16 v9, 0x10

    shr-long v10, v3, v9

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, p1, v7

    add-int/lit8 v7, v0, 0x1

    const/16 v10, 0x8

    shr-long v11, v3, v10

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, p1, v0

    add-int/lit8 v0, v7, 0x1

    const/4 v11, 0x0

    shr-long v11, v3, v11

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, p1, v7

    const-wide v11, 0x100000000L

    mul-long/2addr v11, v5

    div-long/2addr v11, v1

    add-int/lit8 v1, v0, 0x1

    shr-long v7, v11, v8

    long-to-int v2, v7

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    shr-long v7, v11, v9

    long-to-int v2, v7

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    shr-long v7, v11, v10

    long-to-int v2, v7

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x406fe00000000000L    # 255.0

    mul-double/2addr v7, v9

    double-to-int v2, v7

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 29

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    move/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x30

    new-array v5, v5, [B

    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, v5

    const/16 v8, 0x7b

    invoke-direct {v6, v5, v7, v4, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v7, 0x1b

    aput-byte v7, v5, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/16 v11, 0x28

    invoke-direct {v1, v5, v11, v7, v8}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->writeTimeStamp([BIJ)V

    invoke-virtual {v0, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v12, Ljava/net/DatagramPacket;

    array-length v13, v5

    invoke-direct {v12, v5, v13}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v0, v12}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v15, v13, v9

    add-long/2addr v15, v7

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/16 v2, 0x18

    invoke-direct {v1, v5, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->readTimeStamp([BI)J

    move-result-wide v17

    const/16 v2, 0x20

    invoke-direct {v1, v5, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->readTimeStamp([BI)J

    move-result-wide v19

    invoke-direct {v1, v5, v11}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->readTimeStamp([BI)J

    move-result-wide v21

    sub-long v23, v13, v9

    sub-long v25, v21, v19

    sub-long v2, v23, v25

    sub-long v23, v19, v17

    sub-long v25, v21, v15

    add-long v23, v23, v25

    const-wide/16 v25, 0x2

    div-long v23, v23, v25

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    add-long v4, v15, v23

    iput-wide v4, v1, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTime:J

    iput-wide v13, v1, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTimeReference:J

    iput-wide v2, v1, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mRoundTripTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SntpClient"

    const-string v3, "In requestTime: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x0

    return v2
.end method
