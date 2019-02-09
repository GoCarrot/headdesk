.class public Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;
.super Ljava/lang/Object;
.source "Actionable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/action/Actionable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionMapFinishedEvent"
.end annotation


# instance fields
.field public final mId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;->mId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/upsight/android/analytics/internal/action/Actionable$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method
