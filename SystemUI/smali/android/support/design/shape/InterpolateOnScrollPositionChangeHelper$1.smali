.class Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper$1;
.super Ljava/lang/Object;
.source "InterpolateOnScrollPositionChangeHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;


# virtual methods
.method public onScrollChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper$1;->this$0:Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;

    invoke-virtual {v0}, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->updateInterpolationForScreenPosition()V

    return-void
.end method
