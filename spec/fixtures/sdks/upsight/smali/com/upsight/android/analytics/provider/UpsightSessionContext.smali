.class public Lcom/upsight/android/analytics/provider/UpsightSessionContext;
.super Ljava/lang/Object;
.source "UpsightSessionContext.java"


# instance fields
.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/upsight/android/analytics/provider/UpsightSessionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 33
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/upsight/android/analytics/provider/UpsightSessionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getUpsightContext()Lcom/upsight/android/UpsightContext;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/upsight/android/analytics/provider/UpsightSessionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method
