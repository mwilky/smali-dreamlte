.class Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;
.super Ljava/lang/Object;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/VersionedParcelStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldBuffer"
.end annotation


# instance fields
.field private final mDataStream:Ljava/io/DataOutputStream;

.field private final mFieldId:I

.field private final mOutput:Ljava/io/ByteArrayOutputStream;

.field private final mTarget:Ljava/io/DataOutputStream;


# direct methods
.method static synthetic access$000(Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;)Ljava/io/ByteArrayOutputStream;
    .locals 1

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method


# virtual methods
.method flushField()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mFieldId:I

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    if-lt v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    or-int/2addr v1, v3

    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_1
    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mTarget:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
