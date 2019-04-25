.class Lcom/android/server/desktopmode/TouchpadManager$1;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "TouchpadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$100(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/desktopmode/Utils;->isSPenInBoxModel(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$202(Lcom/android/server/desktopmode/TouchpadManager;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->access$300(Lcom/android/server/desktopmode/TouchpadManager;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$000(Lcom/android/server/desktopmode/TouchpadManager;Z)V

    return-void
.end method

.method onShow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/TouchpadManager;->access$000(Lcom/android/server/desktopmode/TouchpadManager;Z)V

    return-void
.end method
