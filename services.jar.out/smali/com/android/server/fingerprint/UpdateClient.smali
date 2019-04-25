.class public abstract Lcom/android/server/fingerprint/UpdateClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "UpdateClient.java"


# instance fields
.field private final OPERATION_END:I

.field private final OPERATION_START:I

.field private final OPERATION_WRITE:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPath:Ljava/lang/String;

.field private mRequestOutBuf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestResult:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/UpdateClient;->OPERATION_START:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/fingerprint/UpdateClient;->OPERATION_WRITE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/fingerprint/UpdateClient;->OPERATION_END:I

    iput-object p10, p0, Lcom/android/server/fingerprint/UpdateClient;->mPath:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/fingerprint/UpdateClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateClient: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/UpdateClient;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic lambda$start$0(Lcom/android/server/fingerprint/UpdateClient;ILjava/util/ArrayList;)V
    .locals 1

    iput p1, p0, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/UpdateClient;->mRequestOutBuf:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic lambda$start$1(Lcom/android/server/fingerprint/UpdateClient;ILjava/util/ArrayList;)V
    .locals 1

    iput p1, p0, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/UpdateClient;->mRequestOutBuf:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic lambda$start$2(Lcom/android/server/fingerprint/UpdateClient;ILjava/util/ArrayList;)V
    .locals 1

    iput p1, p0, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/UpdateClient;->mRequestOutBuf:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic lambda$start$3(Lcom/android/server/fingerprint/UpdateClient;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;)V
    .locals 29

    move-object/from16 v1, p0

    const-string v0, "FingerprintService"

    const-string v2, "UpdateClient: start: thread"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x19000

    const/4 v3, 0x0

    const/4 v0, 0x0

    move-object v4, v0

    const/16 v5, -0x64

    :try_start_0
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/android/server/fingerprint/UpdateClient;->mPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    if-nez v7, :cond_0

    :try_start_1
    const-string v0, "FingerprintService"

    const-string v7, "UpdateClient: start: No file exist"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/server/fingerprint/UpdateClient;->handleUpdate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move/from16 v27, v2

    goto/16 :goto_9

    :cond_0
    :try_start_2
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v7

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    move-object v3, v7

    :try_start_3
    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UpdateClient: start: size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x19000

    new-array v7, v7, [B

    :goto_0
    invoke-virtual {v4, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    move v9, v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eq v8, v10, :cond_1

    :try_start_4
    invoke-virtual {v3, v7, v11, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    const/4 v4, 0x0

    nop

    const-string v6, "FingerprintService"

    const-string v7, "UpdateClient: start: done reading file"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/16 v13, 0x2711

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v9, Lcom/android/server/fingerprint/-$$Lambda$UpdateClient$Q7nXaiIRYPHJP1sRmrxoeuTGmKs;

    invoke-direct {v9, v1}, Lcom/android/server/fingerprint/-$$Lambda$UpdateClient$Q7nXaiIRYPHJP1sRmrxoeuTGmKs;-><init>(Lcom/android/server/fingerprint/UpdateClient;)V

    move-object/from16 v12, p1

    move-object/from16 v16, v6

    move-object/from16 v17, v9

    invoke-interface/range {v12 .. v17}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    const-string v9, "FingerprintService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UpdateClient: start: [10001] FP_FINISH ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms) RESULT: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v1, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_8

    if-eqz v9, :cond_2

    :try_start_7
    const-string v0, "FingerprintService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UpdateClient: start: init error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/server/fingerprint/UpdateClient;->handleUpdate(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    return-void

    :catch_1
    move-exception v0

    move/from16 v27, v2

    move-object/from16 v28, v3

    goto/16 :goto_8

    :cond_2
    nop

    const v7, 0xe1000

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    int-to-double v9, v9

    int-to-double v12, v7

    div-double/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    sget-boolean v10, Lcom/android/server/fingerprint/UpdateClient;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "FingerprintService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UpdateClient: start: loopCnt:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v10, v8

    move v8, v11

    :goto_1
    if-ge v8, v9, :cond_9

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-le v12, v7, :cond_4

    move v12, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    :goto_2
    move v15, v12

    new-array v10, v15, [B

    sget-boolean v12, Lcom/android/server/fingerprint/UpdateClient;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "FingerprintService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UpdateClient: start: read length:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", byteBuffer.position()"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", byteBuffer.remaining():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v3, v10, v11, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sget-boolean v12, Lcom/android/server/fingerprint/UpdateClient;->DEBUG:Z

    if-eqz v12, :cond_6

    const-string v12, "FingerprintService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UpdateClient: start: byteBuffer.position() after get()"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", byteBuffer.remaining():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    array-length v12, v10

    if-lez v12, :cond_7

    array-length v12, v10

    move v13, v11

    :goto_3
    if-ge v13, v12, :cond_7

    aget-byte v14, v10, v13

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-wide/from16 v18, v11

    const/16 v13, 0x2711

    const/4 v14, 0x0

    const/4 v11, 0x1

    new-instance v12, Lcom/android/server/fingerprint/-$$Lambda$UpdateClient$-CtNFiVzImZFDOUGTv7XRJAdDzY;

    invoke-direct {v12, v1}, Lcom/android/server/fingerprint/-$$Lambda$UpdateClient$-CtNFiVzImZFDOUGTv7XRJAdDzY;-><init>(Lcom/android/server/fingerprint/UpdateClient;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    move-object/from16 v17, v12

    move-object/from16 v12, p1

    move/from16 v20, v15

    move v15, v11

    move-object/from16 v16, v6

    :try_start_9
    invoke-interface/range {v12 .. v17}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    const-string v11, "FingerprintService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UpdateClient: start: [10001] FP_FINISH ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v13, v13, v18

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ms) RESULT: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v1, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I

    if-eqz v11, :cond_8

    const-string v0, "FingerprintService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UpdateClient: start: OPERATION_WRITE error = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/server/fingerprint/UpdateClient;->handleUpdate(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    return-void

    :cond_8
    nop

    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move/from16 v20, v15

    :goto_4
    const-string v11, "FingerprintService"

    const-string v12, "UpdateClient: start: failed to call request"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v5}, Lcom/android/server/fingerprint/UpdateClient;->handleUpdate(I)V

    return-void

    :cond_9
    move-object v8, v0

    :try_start_a
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_7

    move-object v8, v0

    nop

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v0

    array-length v0, v11

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v0, :cond_a

    aget-byte v14, v11, v13

    const-string v15, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v5, v17

    invoke-static {v15, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    const/16 v5, -0x64

    goto :goto_5

    :cond_a
    const/16 v17, 0x0

    sget-boolean v0, Lcom/android/server/fingerprint/UpdateClient;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UpdateClient: digest:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    if-eqz v10, :cond_c

    array-length v0, v11

    if-lez v0, :cond_c

    array-length v0, v11

    move/from16 v13, v17

    :goto_6
    if-ge v13, v0, :cond_c

    aget-byte v14, v11, v13

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_c
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/16 v22, 0x2711

    const/16 v23, 0x0

    const/16 v24, 0x2

    new-instance v0, Lcom/android/server/fingerprint/-$$Lambda$UpdateClient$b3C_lbQJ-1TGV4f4R4QotjJSVtE;

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/-$$Lambda$UpdateClient$b3C_lbQJ-1TGV4f4R4QotjJSVtE;-><init>(Lcom/android/server/fingerprint/UpdateClient;)V

    move-object/from16 v21, p1

    move-object/from16 v25, v5

    move-object/from16 v26, v0

    invoke-interface/range {v21 .. v26}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    const-string v0, "FingerprintService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6

    move/from16 v27, v2

    :try_start_c
    const-string v2, "UpdateClient: start: [10001] FP_FINISH ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    move-object/from16 v28, v3

    sub-long v2, v16, v13

    :try_start_d
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I

    if-eqz v0, :cond_d

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateClient: start: OPERATION_END error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/fingerprint/UpdateClient;->mRequestResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x64

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/UpdateClient;->handleUpdate(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4

    return-void

    :cond_d
    nop

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/UpdateClient;->handleUpdate(I)V

    return-void

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v28, v3

    goto :goto_7

    :catch_6
    move-exception v0

    move/from16 v27, v2

    move-object/from16 v28, v3

    :goto_7
    const-string v2, "FingerprintService"

    const-string v3, "UpdateClient: start: failed to call request"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x64

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/UpdateClient;->handleUpdate(I)V

    return-void

    :catch_7
    move-exception v0

    move/from16 v27, v2

    move-object/from16 v28, v3

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "start: failure to get MessageDigest instance"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x64

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/UpdateClient;->handleUpdate(I)V

    return-void

    :catch_8
    move-exception v0

    move/from16 v27, v2

    move-object/from16 v28, v3

    :goto_8
    const-string v2, "FingerprintService"

    const-string v3, "UpdateClient: start: failed to call request"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x64

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/UpdateClient;->handleUpdate(I)V

    return-void

    :catch_9
    move-exception v0

    move/from16 v27, v2

    move-object/from16 v28, v3

    goto :goto_9

    :catch_a
    move-exception v0

    move/from16 v27, v2

    :goto_9
    move-object v2, v0

    const-string v0, "FingerprintService"

    const-string v5, "UpdateClient: start: failure to read file"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x64

    invoke-virtual {v1, v5}, Lcom/android/server/fingerprint/UpdateClient;->handleUpdate(I)V

    if-eqz v4, :cond_e

    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v5, v0

    const-string v5, "FingerprintService"

    const-string v6, "UpdateClient: start: failed to close file"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :cond_e
    :goto_a
    nop

    :goto_b
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/UpdateClient;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/UpdateClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/UpdateClient;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "UpdateClient: destroy: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    return-void
.end method

.method public abstract handleUpdate(I)V
.end method

.method public onAcquired(II)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/fingerprint/UpdateClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/UpdateClient;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] : onAcquired : receiver is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/UpdateClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/UpdateClient;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-interface {v0, v2, v3, v4, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "onAcquired: failed to invoke sendAcquired"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public onAuthenticated(II)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/fingerprint/UpdateClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for Update!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/fingerprint/UpdateClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for Update!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/fingerprint/UpdateClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for Update!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onError(II)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/UpdateClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/UpdateClient;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] : onError : receiver is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/UpdateClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/UpdateClient;->getHalDeviceId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "onAcquired: failed to invoke sendAcquired"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public onRemoved(III)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/fingerprint/UpdateClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for Update!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public start()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/fingerprint/UpdateClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    const-string v2, "FingerprintService"

    const-string v3, "UpdateClient: start: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "FingerprintService"

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/fingerprint/UpdateClient;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/fingerprint/UpdateClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v1, p0, Lcom/android/server/fingerprint/UpdateClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/fingerprint/-$$Lambda$UpdateClient$iEogv9HoBhARqfiGZJRQQdSS3nA;

    invoke-direct {v2, p0, v0}, Lcom/android/server/fingerprint/-$$Lambda$UpdateClient$iEogv9HoBhARqfiGZJRQQdSS3nA;-><init>(Lcom/android/server/fingerprint/UpdateClient;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "FingerprintService"

    const-string v2, "UpdateClient: start: END"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "FingerprintService"

    const-string v4, "UpdateClient: start : failed to start thread"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public stop(Z)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/UpdateClient;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/UpdateClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/UpdateClient;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "UpdateClient: stop: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    return v1
.end method
