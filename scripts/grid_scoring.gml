            totalMultiplier = (chains/3*(chainCount==false)) + (colors-1) + (cascades-1) + (gemsInMatch - 3);
            sc = (30 + 10*chains*(chainCount==false)) * colors * cascades * (gemsInMatch - 2);            
            Score += sc * (level+1) * (multiplier + 1);
            t = instance_create(x+(mean(cellXmin,cellXmax)+0.5)*scale,y+(mean(cellYmin,cellYmax)+0.5)*scale,tooltip_score);
                t.c = ct;
                t.text = sc* (level+1) * (multiplier + 1);
                t.rainbow = colors > 3 or colors*cascades*(gemsInMatch - 2) > 8
                
            if (totalMultiplier > 0) {
                var a = (cascades-1)             / totalMultiplier;
                var b = (colors-1)               / totalMultiplier;
                var c = (chains/3*(!chainCount)) / totalMultiplier;
                var d = (gemsInMatch - 3)        / totalMultiplier;
                
                _stat_cascadeScore[level] += (sc-30) * a * (multiplier + 1) * (level+1);
                _stat_chainsScore[level]  += (sc-30) * c * (multiplier + 1) * (level+1);
                _stat_colorScore[level]   += (sc-30) * b * (multiplier + 1) * (level+1);
                _stat_matchesScore[level] += (sc-30) * d * (multiplier + 1) * (level+1);
            }
            
            _stat_normalScore[level]  += 30 * (multiplier + 1) * (level+1);
            
