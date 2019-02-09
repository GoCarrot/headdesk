.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;
.super Ljava/lang/Object;
.source "Batcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final batchCapacity:I

.field public final maxBatchAge:I

.field public final maxBytes:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 1
    .param p1, "batchCapacity"    # I
    .param p2, "maxBatchAge"    # I
    .param p3, "maxBytes"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    .line 67
    iput p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    .line 68
    iput-wide p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBytes:J

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 89
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 92
    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .line 94
    .local v0, "that":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;
    iget v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    iget v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    if-ne v3, v4, :cond_4

    iget v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    iget v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    if-ne v3, v4, :cond_4

    iget-wide v4, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBytes:J

    iget-wide v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBytes:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 75
    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
