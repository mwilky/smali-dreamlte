.class public Lcom/android/server/policy/OneHandOpPolicyManager;
.super Ljava/lang/Object;
.source "OneHandOpPolicyManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final EASY_ONE_HAND_SERVICE_ACTION:Ljava/lang/String; = "com.samsung.action.EASYONEHAND_SERVICE"

.field private static final EASY_ONE_HAND_SERVICE_CLASS:Ljava/lang/String; = "com.sec.android.easyonehand.EasyOneHandService"

.field private static final EASY_ONE_HAND_SERVICE_PACKAGE:Ljava/lang/String; = "com.sec.android.easyonehand"

.field private static final EASY_ONE_HAND_SERVICE_SCREEN_OFF_ACTION:Ljava/lang/String; = "com.samsung.action.EASYONEHAND_SERVICE_SCREEN_OFF"

.field private static final SIDEGESTURE_SERVICE_ACTION:Ljava/lang/String; = "com.samsung.action.SIDEGESTUREPAD_SERVICE"

.field private static final SIDEGESTURE_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.sidegesturepad.SGPService"

.field private static final SIDEGESTURE_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.sidegesturepad"

.field private static final TAG:Ljava/lang/String; = "OneHandOpPolicyManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OneHandOpPolicyManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$screenTurnedOff$2(Lcom/android/server/policy/OneHandOpPolicyManager;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$startService$3(Lcom/android/server/policy/OneHandOpPolicyManager;Z)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "StartByHomeKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$stopService$4(Lcom/android/server/policy/OneHandOpPolicyManager;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "ForceHide"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$systemBooted$0(Lcom/android/server/policy/OneHandOpPolicyManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->startService(Z)V

    return-void
.end method

.method public static synthetic lambda$systemBooted$1(Lcom/android/server/policy/OneHandOpPolicyManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/policy/OneHandOpPolicyManager;->startGestureService()V

    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOneHandOpController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOneHandOpHandler="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method init(Landroid/content/Context;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    return-void
.end method

.method prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_0

    :pswitch_1
    iput-object p1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    nop

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0xa28
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_1
    :goto_0
    return-void
.end method

.method screenTurnedOff()V
    .locals 5

    sget-boolean v0, Lcom/android/server/policy/OneHandOpPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OneHandOpPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenTurnedOff(), isOneHandOpEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneHandOpEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasOneHandOpController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasOneHandOpHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    move v3, v4

    nop

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSystemBooted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$MF16whXJLoXMJFzBMYVTK0uDtW0;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$MF16whXJLoXMJFzBMYVTK0uDtW0;-><init>(Lcom/android/server/policy/OneHandOpPolicyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method startGestureService()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.samsung.android.sidegesturepad"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.sidegesturepad"

    const-string v3, "com.samsung.android.sidegesturepad.SGPService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.action.SIDEGESTUREPAD_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "option"

    const-string/jumbo v4, "start"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra"

    const-string/jumbo v4, "system"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sget-boolean v1, Lcom/android/server/policy/OneHandOpPolicyManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OneHandOpPolicyManager"

    const-string/jumbo v2, "startGestureService()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_1
    move-exception v1

    return-void
.end method

.method startService(Z)V
    .locals 3

    const-string v0, "OneHandOpPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startService() startByHomeKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$yM4nVtAsmZOnOFBkopYJWQdAO8M;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$yM4nVtAsmZOnOFBkopYJWQdAO8M;-><init>(Lcom/android/server/policy/OneHandOpPolicyManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method stopService()V
    .locals 3

    const-string v0, "OneHandOpPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopService(), caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$3-4hSU-bFb8iwaS-drXq3X3pPk0;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$3-4hSU-bFb8iwaS-drXq3X3pPk0;-><init>(Lcom/android/server/policy/OneHandOpPolicyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method systemBooted()V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/OneHandOpPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OneHandOpPolicyManager"

    const-string/jumbo v1, "systemBooted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneHandOpEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneHandOpTriggeredByHomeKey()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$tNb3vXsQhfQ1Q5E0eTlG0wL87EI;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$tNb3vXsQhfQ1Q5E0eTlG0wL87EI;-><init>(Lcom/android/server/policy/OneHandOpPolicyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$3ivdNHSfWavpnRU8o_QS26LESoY;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$3ivdNHSfWavpnRU8o_QS26LESoY;-><init>(Lcom/android/server/policy/OneHandOpPolicyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
