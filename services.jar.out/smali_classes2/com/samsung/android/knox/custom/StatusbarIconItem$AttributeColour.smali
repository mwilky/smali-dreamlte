.class public Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
.super Ljava/lang/Object;
.source "StatusbarIconItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/StatusbarIconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttributeColour"
.end annotation


# instance fields
.field private mAttribute:I

.field private mColour:I

.field final synthetic this$0:Lcom/samsung/android/knox/custom/StatusbarIconItem;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->this$0:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    iput v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/custom/StatusbarIconItem;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->this$0:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    iput p3, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return-void
.end method


# virtual methods
.method public getAttribute()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    return v0
.end method

.method public getColour()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return v0
.end method

.method public setAttributeColour(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    iput p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return-void
.end method
