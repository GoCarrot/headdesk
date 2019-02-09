.class public Lcom/upsight/android/analytics/internal/session/StandardSessionInitializer;
.super Ljava/lang/Object;
.source "StandardSessionInitializer.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/SessionInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampaignID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->STANDARD:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    return-object v0
.end method
