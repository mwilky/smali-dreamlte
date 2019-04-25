.class Lcom/android/server/VibratorService$MuteInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MuteInfo"
.end annotation


# instance fields
.field private mAbortedVibrations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/VibratorService$AbortVibration;",
            ">;"
        }
    .end annotation
.end field

.field private mMagnitudeType:Ljava/lang/String;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mAbortedVibrations:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/VibratorService$MuteInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/VibratorService$MuteInfo;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/VibratorService$MuteInfo;->getAbortedVibration()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/VibratorService$MuteInfo;Lcom/android/server/VibratorService$AbortVibration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService$MuteInfo;->addAbortedVibration(Lcom/android/server/VibratorService$AbortVibration;)V

    return-void
.end method

.method private addAbortedVibration(Lcom/android/server/VibratorService$AbortVibration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mAbortedVibrations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAbortedVibration()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/VibratorService$AbortVibration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/VibratorService$MuteInfo;->mAbortedVibrations:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 8

    invoke-static {}, Lcom/android/server/VibratorService;->access$5400()Ljava/util/Hashtable;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/VibratorService;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VibratorService"

    const-string v2, "binderDied() - MuteInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$4100()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/VibratorService$MuteCallInfo;->access$4200()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/VibratorService;->access$5400()Ljava/util/Hashtable;

    move-result-object v3

    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v4}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->access$5500(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    iget-object v6, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/VibratorService;->access$5600(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    :cond_2
    invoke-static {}, Lcom/android/server/VibratorService;->access$5400()Ljava/util/Hashtable;

    move-result-object v3

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v5}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    invoke-static {v5, v6}, Lcom/android/server/VibratorService;->access$5500(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v3}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    iget-object v6, p0, Lcom/android/server/VibratorService$MuteInfo;->mToken:Landroid/os/IBinder;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/VibratorService;->access$5600(Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;)V

    :cond_3
    invoke-static {}, Lcom/android/server/VibratorService;->access$5400()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/VibratorService;->access$5400()Ljava/util/Hashtable;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/VibratorService$MuteInfo;

    iget-object v6, v6, Lcom/android/server/VibratorService$MuteInfo;->mMagnitudeType:Ljava/lang/String;

    sget-object v7, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v7}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    sget-object v7, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v7}, Landroid/os/Vibrator$SemMagnitudeTypes;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v2, 0x1

    :cond_5
    :goto_1
    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    invoke-static {v4}, Lcom/android/server/VibratorService$MuteNotificationInfo;->access$4102(Z)Z

    :cond_7
    if-nez v2, :cond_8

    invoke-static {v4}, Lcom/android/server/VibratorService$MuteCallInfo;->access$4202(Z)Z

    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
