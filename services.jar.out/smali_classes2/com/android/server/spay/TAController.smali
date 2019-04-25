.class Lcom/android/server/spay/TAController;
.super Landroid/spay/ITAController$Stub;
.source "TAController.java"


# static fields
.field private static final CMD_ABORT_MST:I = 0x3

.field private static final CMD_MOVE_SEC_OS_CORE0:I = 0x6

.field private static final CMD_MOVE_SEC_OS_CORE4:I = 0x5

.field private static final CMD_MST_OFF:I = 0x2

.field private static final CMD_MST_ON:I = 0x1

.field private static final CMD_RESET_MST:I = 0x4

.field private static final DEBUG:Z

.field private static final FILE_MIGRATE_SEC_OS:Ljava/lang/String; = "/sys/devices/system/sec_os_ctrl/migrate_os"

.field private static final FILE_MST_INTERRUPT:Ljava/lang/String; = "/dev/mst_ctrl"

.field private static final FILE_MST_POWER_ON_OFF:Ljava/lang/String; = "/sys/class/mstldo/mst_drv/transmit"

.field private static final SPAY_TUI_CMD_QSEE_START_SECURE_UI:I = 0x90190

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"


# instance fields
.field public SET_QSEE_SECURE_UI:Z

.field private mContext:Landroid/content/Context;

.field private mNative:Lcom/android/server/spay/PaymentTZNative;

.field private mTAId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .locals 9

    invoke-direct {p0}, Landroid/spay/ITAController$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAController constructor: taId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; maxSendCmdSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; maxRecvRespSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/spay/TAController;->mTAId:I

    new-instance v0, Lcom/android/server/spay/PaymentTZNative;

    iget-object v4, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    iget-object v5, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    iget-object v6, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iget v7, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iget v8, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    move-object v2, v0

    move v3, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/spay/PaymentTZNative;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    return-void
.end method

.method private makeSysCallInternal(I)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v4, "PaymentManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNKNOWN Command ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_0
    const-string v4, "/sys/devices/system/sec_os_ctrl/migrate_os"

    const-string v5, "L0"

    goto :goto_0

    :pswitch_1
    const-string v4, "/sys/devices/system/sec_os_ctrl/migrate_os"

    const-string v5, "b0"

    goto :goto_0

    :pswitch_2
    const-string v4, "/dev/mst_ctrl"

    const-string v5, "0"

    goto :goto_0

    :pswitch_3
    const-string v4, "/dev/mst_ctrl"

    const-string v5, "1"

    goto :goto_0

    :pswitch_4
    const-string v4, "/sys/class/mstldo/mst_drv/transmit"

    const-string v5, "0"

    goto :goto_0

    :pswitch_5
    const-string v4, "/sys/class/mstldo/mst_drv/transmit"

    const-string v5, "1"

    nop

    :goto_0
    nop

    sget-boolean v6, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "PaymentManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writting \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" to -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    new-instance v6, Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v1, v6

    new-instance v6, Ljava/io/BufferedWriter;

    invoke-direct {v6, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v6

    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :goto_1
    nop

    :goto_2
    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :goto_3
    nop

    :goto_4
    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v3

    goto :goto_9

    :catch_2
    move-exception v6

    :try_start_3
    const-string v7, "PaymentManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error writting \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" to file -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_1
    :goto_5
    nop

    :goto_6
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :cond_2
    :goto_7
    nop

    :goto_8
    return v3

    :goto_9
    nop

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    :catch_5
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :cond_3
    :goto_a
    nop

    :goto_b
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    :catch_6
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_4
    :goto_c
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkCertInfo(Ljava/util/List;)Landroid/spay/CertInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/spay/CertInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "checkCertInfo"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PaymentManagerService"

    const-string v1, "TAController::checkCertInfo: Lets fetch them if exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/spay/CertInfo;

    invoke-direct {v0}, Landroid/spay/CertInfo;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, v0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public clearDeviceCertificates(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "clearDeviceCertificates"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAController::clearDeviceCertificates: Deleting the device certificates for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/spay/Utils;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "loadTA"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PaymentManagerService"

    const-string v1, "TAController::loadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    sget-boolean v1, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "PaymentManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TA fd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    iget-object v2, p0, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;

    move v3, v0

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/spay/PaymentTZNative;->loadTA(Landroid/content/Context;IJJ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_0
    return v1

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_1
    throw v1
.end method

.method public makeSystemCall(I)Z
    .locals 6

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PaymentManagerService"

    const-string v2, "entered makeSystemCall in TAController - System Server process"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "makeSystemCall"

    invoke-static {v1}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "PaymentManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makesystemcall - start time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/spay/TAController;->makeSysCallInternal(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "PaymentManagerService"

    const-string/jumbo v3, "makeSystemCall: failed to make system call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    sget-boolean v2, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "PaymentManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeSystemCall: Successful, end time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .locals 3

    const-string/jumbo v0, "processTACommand"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAController::processTACommand: request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; request.mCommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; this.mTAId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/spay/TAController;->mTAId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    const v1, 0x90190

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0, p1}, Lcom/android/server/spay/PaymentTZNative;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    return-object v0
.end method

.method public unloadTA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "unloadTA"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PaymentManagerService"

    const-string v1, "TAController::unloadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0}, Lcom/android/server/spay/PaymentTZNative;->unloadTA()V

    return-void
.end method
