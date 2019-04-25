.class Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenOffReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$802(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$902(Ljava/security/Key;)Ljava/security/Key;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1002(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "GenericSSOService"

    const-string v2, "In onReceive: Action Screen Off (keys are cleared from memory)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GenericSSOService"

    const-string v3, "In onReceive: Action Credential Storage Changed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v3, "KnoxSSOKey"

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1100()Landroid/util/SparseArray;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1100()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1100()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1100()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ssotoken.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$902(Ljava/security/Key;)Ljava/security/Key;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1002(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$802(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$702(Ljava/security/KeyStore;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In onReceive --- Action Credential Storage Changed: General Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In onReceive --- Action Credential Storage Changed: CertificateException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In onReceive --- Action Credential Storage Changed: IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In onReceive --- Action Credential Storage Changed: KeyStoreException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v1

    const-string v2, "GenericSSOService"

    const-string v3, "In onReceive --- Action Credential Storage Changed: NoSuchAlgorithmException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    nop

    :cond_4
    :goto_2
    return-void
.end method
