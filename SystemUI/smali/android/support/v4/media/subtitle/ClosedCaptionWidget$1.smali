.class Landroid/support/v4/media/subtitle/ClosedCaptionWidget$1;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "ClosedCaptionWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/ClosedCaptionWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/subtitle/ClosedCaptionWidget;


# virtual methods
.method public onFontScaleChanged(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/ClosedCaptionWidget$1;->this$0:Landroid/support/v4/media/subtitle/ClosedCaptionWidget;

    iget-object v0, v0, Landroid/support/v4/media/subtitle/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/support/v4/media/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    invoke-interface {v0, p1}, Landroid/support/v4/media/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;->setFontScale(F)V

    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/subtitle/ClosedCaptionWidget$1;->this$0:Landroid/support/v4/media/subtitle/ClosedCaptionWidget;

    iput-object p1, v0, Landroid/support/v4/media/subtitle/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v0, p0, Landroid/support/v4/media/subtitle/ClosedCaptionWidget$1;->this$0:Landroid/support/v4/media/subtitle/ClosedCaptionWidget;

    iget-object v0, v0, Landroid/support/v4/media/subtitle/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/support/v4/media/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    iget-object v1, p0, Landroid/support/v4/media/subtitle/ClosedCaptionWidget$1;->this$0:Landroid/support/v4/media/subtitle/ClosedCaptionWidget;

    iget-object v1, v1, Landroid/support/v4/media/subtitle/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-interface {v0, v1}, Landroid/support/v4/media/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    return-void
.end method
