.class Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$2;
.super Ljava/lang/Object;
.source "GestureDetectingView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$2;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01d6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$2;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->access$300(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a043d

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView$2;->this$0:Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;->access$400(Lcom/android/systemui/statusbar/phone/forceimmersive/view/GestureDetectingView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_0
    return-void
.end method
