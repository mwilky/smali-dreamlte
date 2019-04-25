.class Lcom/android/server/enterprise/security/PasswordPolicy$3;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$3;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v0, "PasswordPolicy"

    const-string/jumbo v2, "listner - Dex Enabling"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$3;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$3;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$100(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    :cond_0
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "PasswordPolicy"

    const-string/jumbo v2, "listener - Dex Disabled"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$3;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$3;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$200(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    :cond_1
    return-void
.end method
