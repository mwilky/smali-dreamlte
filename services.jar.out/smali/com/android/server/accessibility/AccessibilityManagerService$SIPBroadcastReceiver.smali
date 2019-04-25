.class Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIPBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v2, "AxT9IME.isVisibleWindow"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$602(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method
