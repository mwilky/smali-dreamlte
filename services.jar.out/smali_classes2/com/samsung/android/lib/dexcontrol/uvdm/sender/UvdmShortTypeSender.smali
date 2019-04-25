.class public Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;
.super Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;
.source "UvdmShortTypeSender.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected sendData([BI)V
    .locals 7

    const/4 v0, -0x4

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getSenderEnable()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {v3}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_open()I

    move-result v3

    nop

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ccic_open : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getSenderEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getPid()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ioctl_shortDataWrite(I[B)I

    move-result v4

    move v3, v4

    if-ltz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, -0x2

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ccic_write : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    monitor-exit v2

    return-void

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    invoke-virtual {v4}, Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;->ccic_close()I

    move-result v4

    move v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ccic_close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    monitor-exit v2

    return-void

    :cond_4
    const/4 v0, -0x1

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getSenderEnable()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "write data failed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v3, p2

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    goto :goto_5

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;->mUvdmFileHelper:Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;

    return-void

    :cond_7
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_8
    return-void
.end method
