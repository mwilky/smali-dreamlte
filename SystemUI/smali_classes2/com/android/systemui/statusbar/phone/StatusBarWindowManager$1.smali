.class Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;
.super Landroid/os/Handler;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->updateUserActivityTimeout(Z)V

    nop

    :goto_1
    return-void
.end method
