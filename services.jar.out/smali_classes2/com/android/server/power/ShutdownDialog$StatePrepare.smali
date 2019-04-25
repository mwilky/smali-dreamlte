.class Lcom/android/server/power/ShutdownDialog$StatePrepare;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePrepare"
.end annotation


# instance fields
.field private hasAnim:Z

.field private hasSound:Z

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    return v0
.end method

.method private compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "ShutdownDialog"

    const-string v8, "File close error"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v5

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "ShutdownDialog"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_4
    const-string v3, "ShutdownDialog"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1
    goto :goto_4

    :catch_3
    move-exception v2

    const-string v3, "ShutdownDialog"

    const-string v4, "File close error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v3

    const-string v4, "ShutdownDialog"

    const-string v5, "File close error"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_3
    throw v2

    :cond_1
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method private disableWindowRotation(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    if-le p1, p2, :cond_0

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public checkFotaSilent()Z
    .locals 2

    const-string v0, "/efs/sec_efs/auto_reboot/autoinstall.status"

    const-string v1, "AUTO_INSTALL"

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasAnim:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public checkStart()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .locals 7

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    const-string v2, "ShutdownDialog"

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->disableWindowRotation(II)V

    move v4, v1

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v5

    aget-object v5, v5, v4

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    const-string v0, "ShutdownDialog"

    const-string/jumbo v2, "qmglist error"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$600(Lcom/android/server/power/ShutdownDialog;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$700(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->checkFotaSilent()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    iget-boolean v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    const-string/jumbo v1, "poweroff_sound=suspend"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;-><init>(Lcom/android/server/power/ShutdownDialog$StatePrepare;)V

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;->start()V

    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "POWER_OFF_ANIMATION_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "start draw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1100(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$StateDrawing;->start()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1100(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->access$1202(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;

    return-void
.end method
