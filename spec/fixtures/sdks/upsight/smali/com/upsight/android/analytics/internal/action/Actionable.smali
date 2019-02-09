.class public abstract Lcom/upsight/android/analytics/internal/action/Actionable;
.super Ljava/lang/Object;
.source "Actionable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;
    }
.end annotation


# instance fields
.field private mActionMap:Lcom/upsight/android/analytics/internal/action/ActionMap;

.field private mId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/analytics/internal/action/Actionable;",
            "U:",
            "Lcom/upsight/android/analytics/internal/action/ActionContext;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/action/ActionMap",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mActionMap:Lcom/upsight/android/analytics/internal/action/ActionMap;

    .line 40
    return-void
.end method


# virtual methods
.method public appendTriggeredActionList(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Action;)V
    .locals 1
    .param p1, "trigger"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/analytics/internal/action/Actionable;",
            "U:",
            "Lcom/upsight/android/analytics/internal/action/ActionContext;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/action/Action",
            "<TT;TU;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "action":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mActionMap:Lcom/upsight/android/analytics/internal/action/ActionMap;

    .line 106
    .local v0, "typedActionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/internal/action/ActionMap;->appendActionToTrigger(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Action;)V

    .line 107
    return-void
.end method

.method public executeActions(Ljava/lang/String;)V
    .locals 1
    .param p1, "trigger"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mActionMap:Lcom/upsight/android/analytics/internal/action/ActionMap;

    invoke-virtual {v0, p1, p0}, Lcom/upsight/android/analytics/internal/action/ActionMap;->executeActions(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable;)V

    .line 65
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public signalActionCompleted(Lcom/squareup/otto/Bus;)V
    .locals 3
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mActionMap:Lcom/upsight/android/analytics/internal/action/ActionMap;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/action/ActionMap;->signalActionCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable$1;)V

    invoke-virtual {p1, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 80
    :cond_0
    return-void
.end method

.method public signalActionMapCompleted(Lcom/squareup/otto/Bus;)V
    .locals 3
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mActionMap:Lcom/upsight/android/analytics/internal/action/ActionMap;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/action/ActionMap;->signalActionMapCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable$1;)V

    invoke-virtual {p1, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method
