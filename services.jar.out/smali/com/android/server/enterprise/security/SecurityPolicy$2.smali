.class Lcom/android/server/enterprise/security/SecurityPolicy$2;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$2;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "listener - Dex Enabling"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$2;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$2;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$100(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    :cond_0
    return-void
.end method
