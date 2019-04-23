.class public final synthetic Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$1$q5sxHcuq1EIR5u9KmT0hBXLlXqI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/dnd/DragAndDropServerService$1;

.field private final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dnd/DragAndDropServerService$1;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$1$q5sxHcuq1EIR5u9KmT0hBXLlXqI;->f$0:Lcom/android/systemui/dnd/DragAndDropServerService$1;

    iput-object p2, p0, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$1$q5sxHcuq1EIR5u9KmT0hBXLlXqI;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$1$q5sxHcuq1EIR5u9KmT0hBXLlXqI;->f$0:Lcom/android/systemui/dnd/DragAndDropServerService$1;

    iget-object v1, p0, Lcom/android/systemui/dnd/-$$Lambda$DragAndDropServerService$1$q5sxHcuq1EIR5u9KmT0hBXLlXqI;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/systemui/dnd/DragAndDropServerService$1;->lambda$bind$0(Lcom/android/systemui/dnd/DragAndDropServerService$1;Landroid/graphics/Bitmap;)V

    return-void
.end method
