.class public final enum Lcom/caverock/androidsvg/SVG$Unit;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/SVG$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum cm:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum em:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum ex:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum in:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum mm:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum pc:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum percent:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum pt:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum px:Lcom/caverock/androidsvg/SVG$Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "px"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "em"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "ex"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "in"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->in:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "cm"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->cm:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "mm"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->mm:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "pt"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "pc"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->pc:Lcom/caverock/androidsvg/SVG$Unit;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    const-string v1, "percent"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/caverock/androidsvg/SVG$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->in:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v5

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->cm:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v6

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->mm:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v7

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v8

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->pc:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v9

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    aput-object v1, v0, v10

    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->$VALUES:[Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;
    .locals 1

    const-class v0, Lcom/caverock/androidsvg/SVG$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Unit;

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/SVG$Unit;
    .locals 1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->$VALUES:[Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/SVG$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Unit;

    return-object v0
.end method
