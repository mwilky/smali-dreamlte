.class public Lcom/samsung/android/knoxguard/service/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/utils/Utils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getRlcClientDataCompany(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "mKGVM is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getClientData()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRlcClientDataCompany clientData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "companyName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "companyName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    :cond_1
    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRlcClientDataCompany company "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "Parsing Error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "KnoxGuardVaultManager not supported (KnoxGuardVaultException)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRlcClientDataEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "mKGVM is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getClientData()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRlcClientDataEmail clientData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "email"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "email"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    :cond_1
    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRlcClientDataEmail email "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "Parsing Error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "KnoxGuardVaultManager not supported (KnoxGuardVaultException)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRlcClientDataMessageType(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "mKGVM is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getClientData()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRlcClientDataMessageType clientData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRlcClientDataMessageType messageType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "Parsing Error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "KnoxGuardVaultManager not supported (KnoxGuardVaultException)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRlcClientDataPhone(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "mKGVM is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->getClientData()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRlcClientDataPhone clientData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string/jumbo v4, "phoneNumber"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "phoneNumber"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    :cond_1
    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRlcClientDataPhone phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "Parsing Error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "KnoxGuardVaultManager not supported (KnoxGuardVaultException)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRlcState(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v1, "getRlcState."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "mKGVM is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->query()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRlcState rlcState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "KnoxGuardVaultManager not supported (KnoxGuardVaultException)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTextFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    nop

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :cond_0
    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :cond_1
    :goto_1
    throw v2

    :catch_2
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static isExistFile(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public static isSetupWizardFinished(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public static isSupportKGOnCsc()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Knox_SupportKnoxGuard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public static isSupportKGOnSEC()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static lockDevice(Landroid/content/Context;)V
    .locals 17

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcClientDataPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcClientDataEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const-string v0, ""

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcClientDataCompany(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    nop

    const v0, 0x104048f

    move-object/from16 v12, p0

    invoke-virtual {v12, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz v15, :cond_0

    move-object v2, v15

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v15, :cond_1

    move-object v6, v15

    goto :goto_1

    :cond_1
    const-string v0, "Payment Services"

    move-object v6, v0

    :goto_1
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v16, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x1

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v12, v16

    invoke-static/range {v0 .. v12}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V

    return-void
.end method

.method public static setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .locals 17

    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo$Builder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_b

    move/from16 v1, p0

    move/from16 v2, p1

    :try_start_1
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_a

    move-object/from16 v3, p6

    :try_start_2
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    move-object/from16 v4, p3

    :try_start_3
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    move-object/from16 v5, p4

    :try_start_4
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v6, p2

    :try_start_5
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6

    move/from16 v7, p7

    :try_start_6
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    move/from16 v8, p5

    :try_start_7
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    move-wide/from16 v9, p8

    :try_start_8
    invoke-virtual {v0, v9, v10}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    move/from16 v11, p10

    :try_start_9
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    move/from16 v12, p11

    :try_start_a
    invoke-virtual {v0, v12}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    move-object/from16 v13, p12

    :try_start_b
    invoke-virtual {v0, v13}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v0

    sget-object v14, Lcom/samsung/android/knoxguard/service/utils/Utils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v15

    invoke-interface {v14, v15, v0}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move/from16 v8, p5

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    move-object/from16 v6, p2

    goto :goto_1

    :catch_8
    move-exception v0

    move-object/from16 v6, p2

    goto :goto_0

    :catch_9
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v4, p3

    :goto_0
    move-object/from16 v5, p4

    :goto_1
    move/from16 v8, p5

    goto :goto_3

    :catch_a
    move-exception v0

    goto :goto_2

    :catch_b
    move-exception v0

    move/from16 v1, p0

    move/from16 v2, p1

    :goto_2
    move-object/from16 v6, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p5

    move-object/from16 v3, p6

    :goto_3
    move/from16 v7, p7

    :goto_4
    move-wide/from16 v9, p8

    :goto_5
    move/from16 v11, p10

    :goto_6
    move/from16 v12, p11

    :goto_7
    move-object/from16 v13, p12

    :goto_8
    sget-object v14, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call setRemoteLockToLockscreen Exception : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_9
    return-void
.end method
