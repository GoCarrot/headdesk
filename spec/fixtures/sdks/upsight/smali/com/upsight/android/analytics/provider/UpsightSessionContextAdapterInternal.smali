.class public Lcom/upsight/android/analytics/provider/UpsightSessionContextAdapterInternal;
.super Ljava/lang/Object;
.source "UpsightSessionContextAdapterInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/upsight/android/analytics/provider/UpsightSessionContext;)Lcom/upsight/android/UpsightContext;
    .locals 1
    .param p0, "upsight"    # Lcom/upsight/android/analytics/provider/UpsightSessionContext;

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/upsight/android/analytics/provider/UpsightSessionContext;->getUpsightContext()Lcom/upsight/android/UpsightContext;

    move-result-object v0

    return-object v0
.end method
