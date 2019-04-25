.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;
.super Landroid/os/AsyncTask;
.source "NetworkAnalyticsDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KernelDataFetch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v3, "_deliverDataToRecipients: Starting Async task."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v3, "_deliverDataToRecipients: Initialzing handler thread from Async task."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->initializeHandlerThread()V

    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->readDevice()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v3, 0x19

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v3, "_deliverDataToRecipients: Data Delivery object is null. Terminate."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v4, "doInBackground: Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v2

    :cond_4
    nop

    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;Z)V

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
