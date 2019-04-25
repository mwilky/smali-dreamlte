.class Lcom/android/server/am/ActivityManagerService$26;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$26;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$26;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$26;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$26;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$26;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->val$report:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$26;->val$sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$26;->val$report:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$26;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/high16 v3, 0x80000

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x64

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$dataFile:Ljava/io/File;

    if-eqz v4, :cond_1

    if-lez v3, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$sb:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$26;->val$dataFile:Ljava/io/File;

    const-string v6, "\n\n[[TRUNCATED]]"

    invoke-static {v5, v3, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$26;->val$dataFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v4, v4, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$sb:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$26;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v5, v5, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-lez v1, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$sb:Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/lang/ProcessBuilder;

    const/16 v6, 0x11

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "/system/bin/timeout"

    aput-object v7, v6, v2

    const-string v7, "-k"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v9, "15s"

    aput-object v9, v6, v7

    const/4 v7, 0x3

    const-string v9, "10s"

    aput-object v9, v6, v7

    const/4 v7, 0x4

    const-string v9, "/system/bin/logcat"

    aput-object v9, v6, v7

    const/4 v7, 0x5

    const-string v9, "-v"

    aput-object v9, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v9, "threadtime"

    aput-object v9, v6, v7

    const/4 v7, 0x7

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0x8

    const-string/jumbo v9, "events"

    aput-object v9, v6, v7

    const/16 v7, 0x9

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v9, "system"

    aput-object v9, v6, v7

    const/16 v7, 0xb

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0xc

    const-string/jumbo v9, "main"

    aput-object v9, v6, v7

    const/16 v7, 0xd

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0xe

    const-string v9, "crash"

    aput-object v9, v6, v7

    const/16 v7, 0xf

    const-string v9, "-t"

    aput-object v9, v6, v7

    const/16 v7, 0x10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v6

    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v6

    :goto_2
    :try_start_4
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v6

    const/16 v6, 0x2000

    new-array v6, v6, [C

    :goto_3
    invoke-virtual {v4, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    move v8, v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$26;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_3
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v2

    goto :goto_7

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_4
    move-exception v2

    :try_start_6
    const-string v5, "ActivityManager"

    const-string v6, "Error running logcat"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_5

    goto :goto_4

    :goto_5
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v5

    :cond_4
    :goto_6
    throw v2

    :cond_5
    :goto_7
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$26;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$dropboxTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$26;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
