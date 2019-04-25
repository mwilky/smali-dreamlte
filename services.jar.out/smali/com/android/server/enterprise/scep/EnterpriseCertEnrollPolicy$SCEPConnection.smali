.class public Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;
.super Ljava/lang/Object;
.source "EnterpriseCertEnrollPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCEPConnection"
.end annotation


# instance fields
.field mCepProtocol:Ljava/lang/String;

.field mContainerUid:I

.field private mService:Landroid/os/IBinder;

.field mWithThread:Z

.field final synthetic this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILjava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iput-boolean p4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 8

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In Binder Died death receipient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "containerID"

    iget v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "protocol"

    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    const-string v2, "EnterpriseCertEnrollPolicy"

    const-string v3, "cepAgentUid"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string v5, "com.samsung.android.knox.intent.CEP_SERVICE_DISCONNECTED"

    iget v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v4, v5, v3, v6, v7}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$800(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string v5, "com.samsung.action.knox.certenroll.CEP_SERVICE_DISCONNECTED"

    iget v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v4, v5, v3, v6, v7}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$800(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCEP Service has unexpectedly disconnected details:ContainerUid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] and PackageName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$900()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$900()Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$900()Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$900()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in binderDied:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] and PackageName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] thread["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/knox/keystore/ICertEnrollmentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertEnrollmentService;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    const-wide/16 v3, 0x1388

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    move v1, v2

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "offer interface in blocking queue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception in onServiceDisconneted:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_3
    :goto_2
    nop

    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "containerID"

    iget v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "protocol"

    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    const-string v2, "EnterpriseCertEnrollPolicy"

    const-string v3, "cepAgentUid"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string v5, "com.samsung.android.knox.intent.CEP_SERVICE_DISCONNECTED"

    iget v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v4, v5, v3, v6, v7}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$800(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string v5, "com.samsung.action.knox.certenroll.CEP_SERVICE_DISCONNECTED"

    iget v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v4, v5, v3, v6, v7}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$800(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCEP Service has unexpectedly disconnected details:ContainerUid["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] and PackageName["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$900()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$900()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Death link does not exist \t"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$900()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$900()Ljava/util/Map;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
