.class Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$1;
.super Landroid/os/Handler;
.source "KeyguardServiceBoxOwnerInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12ce

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setSelected(Z)V

    :goto_0
    return-void
.end method
