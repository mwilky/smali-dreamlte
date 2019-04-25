.class Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
.super Ljava/lang/Object;
.source "GearVrManagerExternal.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VRRecord"
.end annotation


# instance fields
.field private iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;

.field private mBinder:Landroid/os/IBinder;

.field public mBound:Z

.field public mConnected:Z

.field public q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/vr/IGearVrManagerExternalService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerExternal;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/GearVrManagerExternal;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/GearVrManagerExternal;Lcom/android/server/vr/GearVrManagerExternal$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;-><init>(Lcom/android/server/vr/GearVrManagerExternal;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;Lcom/samsung/android/vr/IGearVrManagerExternalService;)Lcom/samsung/android/vr/IGearVrManagerExternalService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "GearVrManagerExternal"

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerExternal;->access$000(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$500(Lcom/android/server/vr/GearVrManagerExternal;)Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$100(Lcom/android/server/vr/GearVrManagerExternal;)V

    goto :goto_0

    :cond_0
    const-string v1, "GearVrManagerExternal"

    const-string v2, "binderDied() ignored"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "GearVrManagerExternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected() mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v2}, Lcom/android/server/vr/GearVrManagerExternal;->access$500(Lcom/android/server/vr/GearVrManagerExternal;)Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerExternal;->access$500(Lcom/android/server/vr/GearVrManagerExternal;)Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->iGearVrManagerExternalService:Lcom/samsung/android/vr/IGearVrManagerExternalService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mConnected:Z

    iput-object p2, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBinder:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    goto :goto_1

    :cond_0
    const-string v0, "GearVrManagerExternal"

    const-string/jumbo v1, "onServiceConnected() ignored."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "GearVrManagerExternal"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerExternal;->access$000(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$500(Lcom/android/server/vr/GearVrManagerExternal;)Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal;->access$100(Lcom/android/server/vr/GearVrManagerExternal;)V

    goto :goto_0

    :cond_0
    const-string v1, "GearVrManagerExternal"

    const-string/jumbo v2, "onServiceDisconnected() ignored"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
