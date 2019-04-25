.class public Lcom/android/server/notification/EasyMuteController;
.super Ljava/lang/Object;
.source "EasyMuteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;
    }
.end annotation


# instance fields
.field private final RINGTONE_PLAYER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field private final mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRegister:Z

.field private mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field private mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field private mMotionOn:Z

.field private mNotificationPlayerBinder:Landroid/os/IBinder;

.field private mOverTurnOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EasyMuteController"

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->TAG:Ljava/lang/String;

    const-string v0, "android.media.IRingtonePlayer"

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->RINGTONE_PLAYER:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    new-instance v1, Lcom/android/server/notification/EasyMuteController$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/EasyMuteController$1;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;-><init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "master_motion"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "motion_overturn"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->onChange(Z)V

    :try_start_0
    const-string v1, "android.media.IRingtonePlayer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/app/INotificationPlayerOnCompletionListener;

    aput-object v3, v2, v4

    const-string/jumbo v3, "setOnCompletionListener"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EasyMuteController"

    const-string v3, "NoSuchMethodException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "EasyMuteController"

    const-string v3, "ClassNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/EasyMuteController;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/EasyMuteController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/EasyMuteController;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/notification/EasyMuteController;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/EasyMuteController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/EasyMuteController;->setEasyMuteEnabled(ZZ)V

    return-void
.end method

.method private setEasyMuteEnabled(ZZ)V
    .locals 3

    const-string v0, "EasyMuteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EasyMute updated 1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " 2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "EasyMuteController"

    const-string/jumbo v1, "setEasyMuteEnabled no setting changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    iput-boolean p2, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    goto :goto_1

    :cond_2
    const-string v0, "EasyMuteController"

    const-string/jumbo v1, "setEasyMuteEnabled mEasyMuteMotionManager in not null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "EasyMuteController"

    const-string/jumbo v1, "setEasyMuteEnabled setting off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    :goto_1
    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mMotionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mOverTurnOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerListener()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    iput-boolean v2, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    const-string v0, "EasyMuteController"

    const-string v1, "Reg. OverTurn"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    new-instance v1, Lcom/android/server/notification/EasyMuteController$2;

    invoke-direct {v1, p0}, Lcom/android/server/notification/EasyMuteController$2;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    iput-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    new-instance v5, Lcom/android/server/notification/EasyMuteController$3;

    invoke-direct {v5, p0}, Lcom/android/server/notification/EasyMuteController$3;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    invoke-interface {v4, v5, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EasyMuteController"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "EasyMuteController"

    const-string v4, "InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    iget-boolean v1, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "EasyMuteController"

    const-string v4, "IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    iget-boolean v1, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_0
    :goto_0
    nop

    :goto_1
    goto :goto_2

    :cond_1
    const-string v0, "EasyMuteController"

    const-string v1, "Register failed. mEasyMuteMotionManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v0, "EasyMuteController"

    const-string v1, "Register failed. already registered or setting not eanbled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public resetEasyMuteSettingObserver(I)V
    .locals 4

    const-string v0, "EasyMuteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEasyMuteSettingObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "master_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteSettingObserver:Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    const-string v0, "EasyMuteController"

    const-string v1, "UnReg. OverTurn"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "EasyMuteController"

    const-string v1, "UnRegister failed. mEasyMuteMotionManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "EasyMuteController"

    const-string v1, "UnRegister failed. no registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
