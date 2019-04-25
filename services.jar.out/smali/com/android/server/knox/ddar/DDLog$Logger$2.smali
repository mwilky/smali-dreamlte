.class Lcom/android/server/knox/ddar/DDLog$Logger$2;
.super Ljava/lang/Thread;
.source "DDLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/DDLog$Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/ddar/DDLog$Logger;


# direct methods
.method constructor <init>(Lcom/android/server/knox/ddar/DDLog$Logger;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "DualDAR:DDLog:Logger"

    const-string v1, "DDAR Logger started running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-static {v0}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$100(Lcom/android/server/knox/ddar/DDLog$Logger;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-static {v0}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$200(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-static {v0}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$300(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-static {v0}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$300(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-static {v0}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$200(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-static {v1, v0}, Lcom/android/server/knox/ddar/DDLog$Logger;->access$400(Lcom/android/server/knox/ddar/DDLog$Logger;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DualDAR:DDLog:Logger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception in log worker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method
