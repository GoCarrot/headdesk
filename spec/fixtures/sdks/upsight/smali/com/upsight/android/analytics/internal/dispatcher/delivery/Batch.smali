.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;
.super Ljava/lang/Object;
.source "Batch.java"


# instance fields
.field private mBytesLeft:J

.field private mCapacityLeft:I

.field private mPackets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "maxBytes"    # J

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mCapacityLeft:I

    .line 30
    iput-wide p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mBytesLeft:J

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mPackets:Ljava/util/Set;

    .line 32
    return-void
.end method


# virtual methods
.method public addPacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V
    .locals 4
    .param p1, "packet"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mPackets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mCapacityLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mCapacityLeft:I

    .line 56
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mBytesLeft:J

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecordSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mBytesLeft:J

    .line 57
    return-void
.end method

.method public bytesLeft()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mBytesLeft:J

    return-wide v0
.end method

.method public capacityLeft()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mCapacityLeft:I

    return v0
.end method

.method public getPackets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->mPackets:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
