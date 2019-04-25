.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
.super Ljava/lang/Object;
.source "EdgeLightingClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EDGE_LIGHTING_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final EDGE_LIGHTING_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.app.edgelighting.EdgeLightingService"

.field private static final EDGE_LIGHTING_SHOW_CONDITION_ALWAYS:I = 0x0

.field private static final EDGE_LIGHTING_SHOW_CONDITION_SCREEN_OFF:I = 0x2

.field private static final EDGE_LIGHTING_SHOW_CONDITION_SCREEN_ON:I = 0x1

.field private static final SETTING_EDGE_LIGHTING:Ljava/lang/String; = "edge_lighting"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCondition:I

.field private mContext:Landroid/content/Context;

.field private mEdgeLightingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

.field private mEdgeLightingSettingObserver:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

.field private mHandler:Landroid/os/Handler;

.field private final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnectedMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->getCondition()I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mCondition:I

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$1;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    return v0
.end method

.method private createEdgeLightingService(Landroid/os/UserHandle;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    const-string v2, "com.samsung.android.app.edgelighting.EdgeLightingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getCondition()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "edge_lighting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    return v4

    :cond_0
    const-string/jumbo v1, "edge_lighting_show_condition"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    return v4

    :cond_1
    packed-switch v1, :pswitch_data_0

    return v4

    :pswitch_0
    const/4 v2, 0x2

    return v2

    :pswitch_1
    return v3

    :pswitch_2
    const/4 v2, 0x3

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method bind(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind : pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", condition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mHosts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mCondition:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string v3, "bind : already registered"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->updateCondition(I)V

    monitor-exit v0

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bind."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "-ClientManager start"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-EdgeLightingList : ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_2

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method existsHosts()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getEdgeLightingCondition()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mCondition:I

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget v2, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    monitor-exit v0

    return v2

    :cond_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getEdgeLightingState()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAvailableEdgeLighting(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAvailableEdgeLighting: condition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCondition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mCondition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->isEdgeLightingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    monitor-exit v0

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mCondition:I

    if-eq v1, v3, :cond_4

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mCondition:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v2, v4

    :goto_1
    monitor-exit v0

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v4, :cond_6

    monitor-exit v0

    return v2

    :cond_6
    if-ne p1, v3, :cond_7

    monitor-exit v0

    return v4

    :cond_7
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget v6, v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    if-eq v6, v3, :cond_9

    iget v6, v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    goto :goto_2

    :cond_9
    :goto_3
    monitor-exit v0

    return v4

    :cond_a
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isConnectedMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    return v0
.end method

.method isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string/jumbo v0, "edge_lighting"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->isRunning()Z

    move-result v0

    return v0
.end method

.method onBootCompleted()V
    .locals 2

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onScreenChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onScreenChanged(Z)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onSwitchUser(I)V
    .locals 3

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 3

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V

    return-void
.end method

.method registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->register(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method setConnectedMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    return-void
.end method

.method startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startEdgeLighting : edge lighting is disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startEdgeLightingService(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    :cond_1
    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startEdgeLightingService(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startEdgeLightingService : pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method startTurnOverLighting(Ljava/lang/String;ILcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    const-string v2, "com.samsung.android.app.edgelighting.EdgeLightingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method stopEdgeLighting(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopEdgeLighting : edge lighting is disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    return-void
.end method

.method stopEdgeLightingInternal(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopEdgeLightingInternal mHosts is null. pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onStopEdgeLighting(Ljava/lang/String;I)V

    :cond_1
    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unbind(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbind : pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mHosts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    :cond_2
    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unbind : cannot find the matched host"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v2

    const-string/jumbo v3, "unbind."

    invoke-virtual {v2, p2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->unregister(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->startEdgeLighting()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->stopEdgeLighting()V

    :cond_2
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
