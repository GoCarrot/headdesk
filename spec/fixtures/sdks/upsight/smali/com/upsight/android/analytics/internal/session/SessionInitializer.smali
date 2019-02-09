.class public interface abstract Lcom/upsight/android/analytics/internal/session/SessionInitializer;
.super Ljava/lang/Object;
.source "SessionInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;
    }
.end annotation


# virtual methods
.method public abstract getCampaignID()Ljava/lang/Integer;
.end method

.method public abstract getMessageID()Ljava/lang/Integer;
.end method

.method public abstract getType()Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;
.end method
