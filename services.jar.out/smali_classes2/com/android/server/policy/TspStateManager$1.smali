.class Lcom/android/server/policy/TspStateManager$1;
.super Ljava/lang/Object;
.source "TspStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TspStateManager;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/TspStateManager;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    iput-object p2, p0, Lcom/android/server/policy/TspStateManager$1;->val$cmd:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/policy/TspStateManager$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set_grip_data,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager$1;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TspStateManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-static {v2}, Lcom/android/server/policy/TspStateManager;->access$400(Lcom/android/server/policy/TspStateManager;)Lcom/android/server/policy/TspStateManager$TspDebug;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-static {v2}, Lcom/android/server/policy/TspStateManager;->access$400(Lcom/android/server/policy/TspStateManager;)Lcom/android/server/policy/TspStateManager$TspDebug;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/TspStateManager$1;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-static {v3}, Lcom/android/server/policy/TspStateManager;->access$500(Lcom/android/server/policy/TspStateManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/TspStateManager$1;->val$cmd:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/policy/TspStateManager$1;->val$type:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/policy/TspStateManager$TspDebug;->updateTspState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "TspStateManagerInternal"

    const-string v5, "The file is not existed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "TspStateManagerInternal"

    const-string v5, "The file cannot write."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_3
    :goto_2
    nop

    :goto_3
    return-void

    :cond_4
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_5
    :goto_4
    goto :goto_5

    :catchall_0
    move-exception v3

    goto :goto_6

    :catch_3
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_4
    move-exception v3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    :goto_5
    return-void

    :goto_6
    nop

    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_7

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_6
    :goto_7
    throw v3
.end method
