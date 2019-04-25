.class public Lcom/android/systemui/globalactions/util/DefaultUtilFactory;
.super Ljava/lang/Object;
.source "DefaultUtilFactory.java"

# interfaces
.implements Lcom/android/systemui/globalactions/util/UtilFactory;


# instance fields
.field mContext:Landroid/content/Context;

.field private mProvider:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/globalactions/util/LogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/globalactions/util/LogWrapper;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/LogWrapper;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-virtual {v1, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/AlertDialogFactory;

    new-instance v3, Lcom/android/systemui/globalactions/util/AlertDialogFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/AlertDialogFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/BixbyHandler;

    new-instance v3, Lcom/android/systemui/globalactions/util/BixbyHandler;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/systemui/globalactions/util/BixbyHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/util/LogWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/BroadcastManager;

    new-instance v3, Lcom/android/systemui/globalactions/util/BroadcastManager;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/globalactions/util/HandlerUtil;

    invoke-direct {v5}, Lcom/android/systemui/globalactions/util/HandlerUtil;-><init>()V

    invoke-direct {v3, v4, v0, v5}, Lcom/android/systemui/globalactions/util/BroadcastManager;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/util/LogWrapper;Lcom/android/systemui/globalactions/util/HandlerUtil;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/ConnectivityManagerWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/ConnectivityManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/ConnectivityManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/util/LogWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/DevicePolicyManagerWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/DevicePolicyManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/DevicePolicyManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/HandlerUtil;

    new-instance v3, Lcom/android/systemui/globalactions/util/HandlerUtil;

    invoke-direct {v3}, Lcom/android/systemui/globalactions/util/HandlerUtil;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/InputMethodManagerWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/InputMethodManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/InputMethodManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/util/LogWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/globalactions/util/HandlerUtil;

    invoke-direct {v5}, Lcom/android/systemui/globalactions/util/HandlerUtil;-><init>()V

    invoke-direct {v3, v4, v0, v5}, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/util/LogWrapper;Lcom/android/systemui/globalactions/util/HandlerUtil;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/ResourcesWrapper;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/SemEmergencyManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/SemPersonaWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/systemui/globalactions/util/SettingsWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/util/LogWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/SystemController;

    new-instance v3, Lcom/android/systemui/globalactions/util/SystemController;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/globalactions/util/HandlerUtil;

    invoke-direct {v5}, Lcom/android/systemui/globalactions/util/HandlerUtil;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/globalactions/util/SystemController;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/util/HandlerUtil;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/util/LogWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/TelephonyManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/ThemeChecker;

    new-instance v3, Lcom/android/systemui/globalactions/util/ThemeChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/systemui/globalactions/util/ThemeChecker;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/util/LogWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/ToastController;

    new-instance v3, Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/ToastController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/TSafeLockUtil;

    new-instance v3, Lcom/android/systemui/globalactions/util/TSafeLockUtil;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/TSafeLockUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/UserManagerWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/UserManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/UserManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/AccessibilityManagerWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/AccessibilityManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/AccessibilityManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/globalactions/util/ContentObserverWrapper;

    new-instance v3, Lcom/android/systemui/globalactions/util/ContentObserverWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/globalactions/util/ContentObserverWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/DefaultUtilFactory;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
