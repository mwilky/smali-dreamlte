.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;
.super Ljava/lang/Object;
.source "DMALogSender.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/Callback<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->onResult(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onResult(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V

    const/4 v0, 0x0

    return-object v0
.end method
