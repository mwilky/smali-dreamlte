.class public Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;
.super Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;
.source "UvdmLongTypeSender.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInMsgMinLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mInMsgMinLength:I

    return-void
.end method

.method private close()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_close()I

    move-result v0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ccic_close : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private replyError([BI)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->setData([B)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    invoke-interface {v1, p2, v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;->onFail(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private sleep(I)V
    .locals 2

    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected sendData([BI)V
    .locals 11

    const-class v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    :goto_0
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v5, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {v5}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_open()I

    move-result v5

    if-ltz v5, :cond_0

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    move v4, v6

    if-nez v4, :cond_1

    sget-object v6, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ccic_open failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    nop

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1f4

    invoke-direct {p0, v5}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->sleep(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_9

    :cond_4
    const/4 v2, 0x0

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v3

    if-nez v3, :cond_5

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    goto :goto_2

    :cond_5
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError([BI)V

    :goto_2
    monitor-exit v0

    return-void

    :cond_6
    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    :goto_3
    const/16 v7, 0xa

    if-ge v4, v7, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez v5, :cond_a

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getPid()I

    move-result v8

    invoke-virtual {v7, v8, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ioctl_longDataWrite(I[B)I

    move-result v7

    if-ltz v7, :cond_7

    move v8, v6

    goto :goto_4

    :cond_7
    move v8, v3

    :goto_4
    move v5, v8

    if-nez v5, :cond_8

    sget-object v8, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ccic_write failed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    monitor-exit v0

    return-void

    :cond_a
    if-nez v5, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v3

    if-nez v3, :cond_b

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    goto :goto_5

    :cond_b
    const/4 v2, -0x2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError([BI)V

    :goto_5
    monitor-exit v0

    return-void

    :cond_c
    const/4 v4, 0x0

    nop

    :goto_6
    if-ge v3, v7, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v4, :cond_10

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-eqz v5, :cond_f

    if-lez p2, :cond_d

    invoke-direct {p0, p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->sleep(I)V

    :cond_d
    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ioctl_longDataRead(I)[B

    move-result-object v5

    move-object v1, v5

    if-eqz v1, :cond_e

    array-length v5, v1

    iget v6, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mInMsgMinLength:I

    if-lt v5, v6, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    sget-object v5, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ccic_read failed : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    monitor-exit v0

    return-void

    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v4, :cond_12

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    if-eqz v3, :cond_11

    new-instance v3, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-direct {v3}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;-><init>()V

    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->setData([B)V

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    invoke-interface {v5, v3}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_8

    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v5, "callback is null"

    invoke-static {v3, v5}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    const/4 v3, -0x3

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->replyError([BI)V

    :cond_13
    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->getSenderEnable()Z

    move-result v3

    if-nez v3, :cond_14

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    :cond_14
    monitor-exit v0

    return-void

    :goto_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInMsgMinLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;->mInMsgMinLength:I

    return-void
.end method
